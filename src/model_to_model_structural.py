from besser.BUML.metamodel.structural import (
    Class, Property, Method, Parameter,
    BinaryAssociation, Generalization, DomainModel,
    Enumeration, EnumerationLiteral, Multiplicity,
    StringType, IntegerType, FloatType, BooleanType,
    TimeType, DateType, DateTimeType, TimeDeltaType,
    AnyType, Constraint, AssociationClass, Metadata
)
from besser.utilities.buml_code_builder import domain_model_to_code
from pathlib import Path
import argparse
from utils import load_model
from utils import read_json_config

def remove_class_by_name(domain_model: DomainModel, class_name: str):
    class_to_remove = domain_model.get_class_by_name(class_name)
    if class_to_remove:
        class_associations = class_to_remove.associations
        for association in class_associations:
            domain_model.associations.discard(association)
        domain_model.types.discard(class_to_remove)

def remove_enum_by_name(domain_model: DomainModel, enum_name: str):
    enum_to_remove = domain_model.get_type_by_name(enum_name)
    if enum_to_remove:
        domain_model.types.discard(enum_to_remove)

def remove_enum_literal(domain_model: DomainModel, enum_name: str, literal_name: str):
    enum_obj = domain_model.get_type_by_name(enum_name)
    if not enum_obj or not isinstance(enum_obj, Enumeration):
        return
    literal_to_remove = None
    for literal in enum_obj.literals:
        if literal.name == literal_name:
            literal_to_remove = literal
            break
    if literal_to_remove:
        enum_obj.literals.discard(literal_to_remove)

def remove_association_by_name(domain_model: DomainModel, association_name: str):
    association_to_remove = None
    for association in domain_model.associations:
        if association.name == association_name:
            association_to_remove = association
            break
    if association_to_remove:
        domain_model.associations.discard(association_to_remove)

def remove_attribute_by_name(domain_model: DomainModel, class_name: str, attribute_name: str):
    class_obj = domain_model.get_class_by_name(class_name)
    if class_obj:
        attribute_to_remove = None
        for attribute in class_obj.attributes:
            if attribute.name == attribute_name:
                attribute_to_remove = attribute
                break
        if attribute_to_remove:
            class_obj.attributes.discard(attribute_to_remove)

def transform_currency_type(domain_model: DomainModel, list_of_currencies=None):
    currency_enum = domain_model.get_type_by_name("CurrencyType")
    if not ((list_of_currencies is None) or (len(list_of_currencies) == 0)):
        currency_enum.literals.clear()
        for currency in list_of_currencies:
            literal = EnumerationLiteral(name=currency)
            currency_enum.add_literal(literal)

def transform_community(domain_model: DomainModel, has_communities=True, has_subcommunities=True):
    community_class = domain_model.get_class_by_name("Community")
    community_class_associations = community_class.associations
    if not has_communities:
        remove_class_by_name(domain_model, "Community")
        remove_enum_literal(domain_model, "NotificationType", "CommunityNotification")
    else:
        if not has_subcommunities:
            remove_association_by_name(domain_model, "Community_Community")
            
def transform_user_rating(domain_model: DomainModel, can_users_be_rated=True):
    if not can_users_be_rated:
        remove_class_by_name(domain_model, "Rating")
        remove_attribute_by_name(domain_model, "User", "averageRating")

def transform_profile_customization(domain_model: DomainModel, can_costumize_profile=True):
    if not can_costumize_profile:
        remove_attribute_by_name(domain_model, "User", "bio")
        remove_association_by_name(domain_model, "User_Media")

def transform_media_support(domain_model: DomainModel, images_allowed=True, video_allowed=True, sound_allowed=True):
    if images_allowed and video_allowed and sound_allowed:
        return
    media_enum = domain_model.get_type_by_name("MediaType")
    if (not images_allowed) and (not video_allowed) and (not sound_allowed):
        remove_enum_by_name(domain_model, "MediaType")
        remove_class_by_name(domain_model, "Media")
    else:
        if not images_allowed:
            for literal in media_enum.literals:
                if literal.name == "Image":
                    media_enum.literals.discard(literal)
                    break
        if not video_allowed:
            for literal in media_enum.literals:
                if literal.name == "Video":
                    media_enum.literals.discard(literal)
                    break
        if not sound_allowed:
            for literal in media_enum.literals:
                if literal.name == "Sound":
                    media_enum.literals.discard(literal)
                    break

def transform_messaging_support(domain_model: DomainModel, has_messaging=True, has_read_status=True):
    if not has_messaging:
        remove_class_by_name(domain_model, "Message")
        remove_class_by_name(domain_model, "Chat")
        remove_enum_literal(domain_model, "NotificationType", "MessageNotification")
    elif not has_read_status:
        remove_attribute_by_name(domain_model, "Message", "readStatus")

def transform_item_customization(domain_model: DomainModel, can_sell_items=True, can_giveaway_items=True, can_exchange_items=True, can_items_have_comments=True, can_items_be_reported=True):
    item_class = domain_model.get_class_by_name("Item")
    item_class_associations = item_class.associations
    if not can_sell_items:
        remove_attribute_by_name(domain_model, "Item", "price")
    if not can_giveaway_items:
        remove_attribute_by_name(domain_model, "Item", "giveaway")
    if not can_exchange_items:
        remove_attribute_by_name(domain_model, "Item", "exchangeOption")
    if not can_items_have_comments:
        remove_association_by_name(domain_model, "Item_Review")
    if not can_items_be_reported:
        remove_association_by_name(domain_model, "ReportItem")
        remove_attribute_by_name(domain_model, "Item", "isBanned")

def transform_structural_model(domain_model: DomainModel, config= None):
    itemSettings = config.get('itemSettings', {}) if config else {}
    itemExchangeSettings = itemSettings.get('itemExchangeSettings', {}) if config else {}
    mediaSettings = config.get('mediaSettings', {}) if config else {}
    chatSettings = config.get('chatSettings', {}) if config else {}
    userSettings = config.get('userSettings', {}) if config else {}
    communitySettings = config.get('communitySettings', {}) if config else {}

    list_of_currencies = ["USD", "EUR", "GBP", "JPY", "AUD"]
    
    has_communities = communitySettings.get('hasCommunities', True)
    has_subcommunities = communitySettings.get('hasSubCommunities', True)
    
    can_users_be_rated = userSettings.get('canUsersBeRated', True)
    can_costumize_profile = userSettings.get('canCustomizeProfile', True)

    images_allowed = mediaSettings.get('mediaTypeImages', True)
    video_allowed = mediaSettings.get('mediaTypeVideos', True)
    sound_allowed = mediaSettings.get('mediaTypeSound', True)
    
    has_messaging = chatSettings.get('hasMessagingSystem', True)
    has_read_status = chatSettings.get('hasReadReceipts', True)

    can_sell_items = itemExchangeSettings.get('canSellItems', True)
    can_giveaway_items = itemExchangeSettings.get('canGiveawayItems', True)
    can_exchange_items = itemExchangeSettings.get('canExchangeItems', True)

    can_items_have_comments = itemSettings.get('canItemsHaveComments', True)
    can_items_be_reported = itemSettings.get('canItemsBeReported', True)
    
    transform_currency_type(domain_model, list_of_currencies)
    transform_community(domain_model, has_communities, has_subcommunities)
    transform_user_rating(domain_model, can_users_be_rated)
    transform_profile_customization(domain_model, can_costumize_profile)
    transform_media_support(domain_model, images_allowed, video_allowed, sound_allowed)
    transform_messaging_support(domain_model, has_messaging, has_read_status)
    transform_item_customization(domain_model, can_sell_items, can_giveaway_items, can_exchange_items, can_items_have_comments, can_items_be_reported)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Model to Model Transformation - Structural Model")

    parser.add_argument(
        "--config-path",
        type=str,
        default="./Diagrams/config.json", # Needs to be changed into real config file
        help="Path to the specific configuration.",
    )
    parser.add_argument(
        "--structural-model-path",
        type=str,
        default="./Diagrams/StructuralModel.py",
        help="Path to the base structural metamodel.",
    )
    parser.add_argument(
        "--output-path",
        type=str,
        default="./Output/StructuralModel.py",
        help="Path to the output structural metamodel.",
    )

    # Parse the command-line arguments
    args = parser.parse_args()
    model_module = load_model(args.structural_model_path)
    domain_model: DomainModel = model_module.domain_model
    config_module = read_json_config(args.config_path)
    transform_structural_model(domain_model, config=config_module)

    output_path = Path(args.output_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    domain_model_to_code(domain_model, output_path.as_posix())

