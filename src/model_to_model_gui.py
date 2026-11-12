from besser.BUML.metamodel.gui import (
    GUIModel, Screen, Button, InputField, DataList, 
    DataSourceElement, ViewComponent, Module
)
from pathlib import Path
import argparse
from utils import load_model, read_json_config, gui_model_to_code

##################################
# Helper functions
##################################

def get_all_screens(gui_model: GUIModel):
    """Helper to get a flat list of all screens in the model."""
    screens = []
    if gui_model.modules:
        for module in gui_model.modules:
            module_screens = getattr(module, "screens", [])
            screens.extend(list(module_screens))
    return screens

def safe_remove(collection, element):
    """Safely removes an element from a set or list."""
    if isinstance(collection, set):
        collection.discard(element)
    elif isinstance(collection, list):
        if element in collection:
            collection.remove(element)

def remove_view_element_by_name(gui_model: GUIModel, element_name: str):
    """Removes a Button, Input, or List from any screen by its name."""
    for screen in get_all_screens(gui_model):
        current_elements = list(screen.view_elements) if screen.view_elements else []
        for element in current_elements:
            if getattr(element, "name", None) == element_name:
                safe_remove(screen.view_elements, element)

def remove_datasource_field_by_name(gui_model: GUIModel, datasource_name: str, field_name: str):
    """Removes a specific field (column) from a DataSourceElement."""
    targets = set()
    # 1. Find the target DataSourceElement(s)
    for screen in get_all_screens(gui_model):
        if not screen.view_elements: continue
        for element in screen.view_elements:
            if isinstance(element, DataList):
                sources = getattr(element, "list_sources", [])
                for source in sources:
                    if getattr(source, "name", None) == datasource_name:
                        targets.add(source)

    # 2. Remove the field from the found DataSources
    for source in targets:
        fields_collection = getattr(source, "fields", None)
        if fields_collection:
            field_to_remove = None
            for field in list(fields_collection):
                if getattr(field, "name", None) == field_name:
                    field_to_remove = field
                    break
            if field_to_remove:
                safe_remove(fields_collection, field_to_remove)

##################################
# Transformation functions
##################################

def transform_messaging_support(gui_model: GUIModel, has_messaging=True):
    if not has_messaging:
        # Removes the button that navigates to the Chat Page
        remove_view_element_by_name(gui_model, "ChatPageButton")

def transform_community_support(gui_model: GUIModel, has_communities=True):
    if not has_communities:
        # Removes the button that navigates to the Communities Page
        remove_view_element_by_name(gui_model, "CommunitiesPageButton")
        # Assuming Notifications are largely tied to Community activity, remove them too
        remove_view_element_by_name(gui_model, "NotificationsPageButton")

def transform_profile_customization(gui_model: GUIModel, can_customize_profile=True):
    if not can_customize_profile:
        # Removes the button that navigates to the User Page
        remove_view_element_by_name(gui_model, "UserPageButton")
        # Also remove the edit button inside the page if it exists
        remove_view_element_by_name(gui_model, "EditProfileButton")

def transform_item_actions(gui_model: GUIModel, can_items_have_comments=True, can_items_be_reported=True):
    if not can_items_have_comments:
        remove_view_element_by_name(gui_model, "AddReviewButton")
        remove_view_element_by_name(gui_model, "ProductReviewsDataList")
    
    if not can_items_be_reported:
        remove_view_element_by_name(gui_model, "AddReportButton")

def transform_item_customization(gui_model: GUIModel, item_for_sell=True, item_for_giveaway=True, item_for_exchange=True):
    # The name of the DataSource used in the Item Visualization Page
    ds_target = "ProductDataSourceElement"

    if not item_for_sell:
        remove_datasource_field_by_name(gui_model, ds_target, "price")
        remove_datasource_field_by_name(gui_model, ds_target, "priceCurrency")
    
    if not item_for_giveaway:
        remove_datasource_field_by_name(gui_model, ds_target, "giveaway")
        
    if not item_for_exchange:
        remove_datasource_field_by_name(gui_model, ds_target, "exchangeOption")

def transform_gui_model(gui_model: GUIModel, config=None):
    # Config Extraction (matching structural model style)
    itemSettings = config.get('itemSettings', {}) if config else {}
    itemExchangeSettings = itemSettings.get('itemExchangeSettings', {}) if config else {}
    chatSettings = config.get('chatSettings', {}) if config else {}
    userSettings = config.get('userSettings', {}) if config else {}
    communitySettings = config.get('communitySettings', {}) if config else {}

    # Flag Extraction
    has_messaging = chatSettings.get('hasMessagingSystem', True)
    has_communities = communitySettings.get('hasCommunities', True)
    can_customize_profile = userSettings.get('canCustomizeProfile', True)
    
    can_items_have_comments = itemSettings.get('canItemsHaveComments', True)
    can_items_be_reported = itemSettings.get('canItemsBeReported', True)
    
    # Updated variables
    item_for_sell = itemExchangeSettings.get('canSellItems', True)
    item_for_giveaway = itemExchangeSettings.get('canGiveawayItems', True)
    item_for_exchange = itemExchangeSettings.get('canExchangeItems', True)

    # Apply Transformations
    transform_messaging_support(gui_model, has_messaging)
    transform_community_support(gui_model, has_communities)
    transform_profile_customization(gui_model, can_customize_profile)
    transform_item_actions(gui_model, can_items_have_comments, can_items_be_reported)
    transform_item_customization(gui_model, item_for_sell, item_for_giveaway, item_for_exchange)

##################################
# Main Execution
##################################

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Model to Model Transformation - GUI Model")

    parser.add_argument(
        "--config-path",
        type=str,
        default="./Diagrams/config.json",
        help="Path to the specific configuration."
    )
    parser.add_argument(
        "--gui-model-path",
        type=str,
        default="./Diagrams/GUIModel.py",
        help="Path to the base GUI model."
    )
    parser.add_argument(
        "--structural-model-path",
        type=str,
        default="./Output/StructuralModel.py",
        help="Path to the domain model (required context for code generation)."
    )
    parser.add_argument(
        "--output-path",
        type=str,
        default="./Output/GUIModel.py",
        help="Path to the transformed GUI model output."
    )

    # Parse arguments
    args = parser.parse_args()

    # Load Models
    gui_module = load_model(args.gui_model_path)
    gui_model: GUIModel = gui_module.gui_model
    
    structural_module = load_model(args.structural_model_path)
    domain_model = structural_module.domain_model

    # Load Config
    config_module = read_json_config(args.config_path)

    # Transform
    transform_gui_model(gui_model, config=config_module)

    # Save
    output_path = Path(args.output_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    
    gui_model_to_code(gui_model, output_path.as_posix(), domain_model)

    print(f"GUI transformation complete. Model saved to {output_path}")