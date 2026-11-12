####################
# STRUCTURAL MODEL #
####################

from besser.BUML.metamodel.structural import (
    Class, Property, Method, Parameter,
    BinaryAssociation, Generalization, DomainModel,
    Enumeration, EnumerationLiteral, Multiplicity,
    StringType, IntegerType, FloatType, BooleanType,
    TimeType, DateType, DateTimeType, TimeDeltaType,
    AnyType, Constraint, AssociationClass, Metadata
)

# Enumerations
CurrencyType: Enumeration = Enumeration(
    name="CurrencyType",
    literals={
            EnumerationLiteral(name="PLN"),
			EnumerationLiteral(name="EUR"),
			EnumerationLiteral(name="USD")
    }
)

# Classes
ItemSettings = Class(name="ItemSettings")
MediaSettings = Class(name="MediaSettings")
ItemCategory = Class(name="ItemCategory")
ChatSettings = Class(name="ChatSettings")
UISettings = Class(name="UISettings")
UserSettings = Class(name="UserSettings")
CommunitySettings = Class(name="CommunitySettings")
GeneralSettings = Class(name="GeneralSettings")

# ItemSettings class attributes and methods
ItemSettings_canSellItems: Property = Property(name="canSellItems", type=BooleanType)
ItemSettings_canGiveawayItems: Property = Property(name="canGiveawayItems", type=BooleanType)
ItemSettings_canExchangeItems: Property = Property(name="canExchangeItems", type=BooleanType)
ItemSettings_canItemsHaveComments: Property = Property(name="canItemsHaveComments", type=BooleanType)
ItemSettings_defaultCurrency: Property = Property(name="defaultCurrency", type=CurrencyType)
ItemSettings_canItemsBeReported: Property = Property(name="canItemsBeReported", type=BooleanType)
ItemSettings_allowedItemsCategories: Property = Property(name="allowedItemsCategories", type=ItemCategory)
ItemSettings.attributes={ItemSettings_allowedItemsCategories, ItemSettings_canSellItems, ItemSettings_canGiveawayItems, ItemSettings_canExchangeItems, ItemSettings_canItemsHaveComments, ItemSettings_canItemsBeReported, ItemSettings_defaultCurrency}

# MediaSettings class attributes and methods
MediaSettings_mediaTypeImages: Property = Property(name="mediaTypeImages", type=BooleanType)
MediaSettings_mediaTypeVideos: Property = Property(name="mediaTypeVideos", type=BooleanType)
MediaSettings_mediaTypeSound: Property = Property(name="mediaTypeSound", type=BooleanType)
MediaSettings.attributes={MediaSettings_mediaTypeSound, MediaSettings_mediaTypeImages, MediaSettings_mediaTypeVideos}

# ItemCategory class attributes and methods
ItemCategory_itemName: Property = Property(name="itemName", type=StringType)
ItemCategory.attributes={ItemCategory_itemName}

# ChatSettings class attributes and methods
ChatSettings_hasMessagingSystem: Property = Property(name="hasMessagingSystem", type=BooleanType)
ChatSettings_hasReadReceipts: Property = Property(name="hasReadReceipts", type=BooleanType)
ChatSettings.attributes={ChatSettings_hasMessagingSystem, ChatSettings_hasReadReceipts}

# UISettings class attributes and methods
UISettings_secondaryColor: Property = Property(name="secondaryColor", type=StringType)
UISettings_thirdColor: Property = Property(name="thirdColor", type=StringType)
UISettings_primaryColor: Property = Property(name="primaryColor", type=StringType)
UISettings.attributes={UISettings_thirdColor, UISettings_primaryColor, UISettings_secondaryColor}

# UserSettings class attributes and methods
UserSettings_canCustomizeProfile: Property = Property(name="canCustomizeProfile", type=BooleanType)
UserSettings_canUsersBeRated: Property = Property(name="canUsersBeRated", type=BooleanType)
UserSettings.attributes={UserSettings_canUsersBeRated, UserSettings_canCustomizeProfile}

# CommunitySettings class attributes and methods
CommunitySettings_hasCommunities: Property = Property(name="hasCommunities", type=BooleanType)
CommunitySettings_hasSubcommunities: Property = Property(name="hasSubcommunities", type=BooleanType)
CommunitySettings.attributes={CommunitySettings_hasSubcommunities, CommunitySettings_hasCommunities}

# GeneralSettings class attributes and methods

# Relationships
ItemSettings_ItemCategory: BinaryAssociation = BinaryAssociation(
    name="ItemSettings_ItemCategory",
    ends={
        Property(name="itemcategory", type=ItemCategory, multiplicity=Multiplicity(1, 9999)),
        Property(name="allowedItemCategories", type=ItemSettings, multiplicity=Multiplicity(1, 1))
    }
)
GeneralSettings_UISettings: BinaryAssociation = BinaryAssociation(
    name="GeneralSettings_UISettings",
    ends={
        Property(name="generalsettings", type=GeneralSettings, multiplicity=Multiplicity(1, 1), is_navigable=False),
        Property(name="uisettings", type=UISettings, multiplicity=Multiplicity(1, 1))
    }
)
GeneralSettings_ItemSettings: BinaryAssociation = BinaryAssociation(
    name="GeneralSettings_ItemSettings",
    ends={
        Property(name="generalsettings_1", type=GeneralSettings, multiplicity=Multiplicity(1, 1), is_navigable=False),
        Property(name="itemsettings", type=ItemSettings, multiplicity=Multiplicity(1, 1))
    }
)
GeneralSettings_ChatSettings: BinaryAssociation = BinaryAssociation(
    name="GeneralSettings_ChatSettings",
    ends={
        Property(name="generalsettings_2", type=GeneralSettings, multiplicity=Multiplicity(1, 1), is_navigable=False),
        Property(name="chatsettings", type=ChatSettings, multiplicity=Multiplicity(1, 1))
    }
)
GeneralSettings_CommunitySettings: BinaryAssociation = BinaryAssociation(
    name="GeneralSettings_CommunitySettings",
    ends={
        Property(name="generalsettings_3", type=GeneralSettings, multiplicity=Multiplicity(1, 1), is_navigable=False),
        Property(name="communitysettings", type=CommunitySettings, multiplicity=Multiplicity(1, 1))
    }
)
GeneralSettings_MediaSettings: BinaryAssociation = BinaryAssociation(
    name="GeneralSettings_MediaSettings",
    ends={
        Property(name="generalsettings_4", type=GeneralSettings, multiplicity=Multiplicity(1, 1), is_navigable=False),
        Property(name="mediasettings", type=MediaSettings, multiplicity=Multiplicity(1, 1))
    }
)
GeneralSettings_UserSettings: BinaryAssociation = BinaryAssociation(
    name="GeneralSettings_UserSettings",
    ends={
        Property(name="generalsettings_5", type=GeneralSettings, multiplicity=Multiplicity(1, 1), is_navigable=False),
        Property(name="usersettings", type=UserSettings, multiplicity=Multiplicity(1, 1))
    }
)

# Domain Model
domain_model = DomainModel(
    name="Class_Diagram",
    types={ItemSettings, MediaSettings, ItemCategory, ChatSettings, UISettings, UserSettings, CommunitySettings, GeneralSettings, CurrencyType},
    associations={ItemSettings_ItemCategory, GeneralSettings_UISettings, GeneralSettings_ItemSettings, GeneralSettings_ChatSettings, GeneralSettings_CommunitySettings, GeneralSettings_MediaSettings, GeneralSettings_UserSettings},
    generalizations={}
)


######################
# PROJECT DEFINITION #
######################

from besser.BUML.metamodel.project import Project
from besser.BUML.metamodel.structural.structural import Metadata

metadata = Metadata(description="New project")
project = Project(
    name="tacs",
    models=[domain_model],
    owner="User",
    metadata=metadata
)
