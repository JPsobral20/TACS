import importlib.util
import sys
from pathlib import Path
import json
import os
from besser.BUML.metamodel.structural import *
from besser.BUML.metamodel.gui import *
from besser.utilities import sort_by_timestamp as sort
from besser.utilities.buml_code_builder import PRIMITIVE_TYPE_MAPPING, safe_class_name, RESERVED_NAMES

def load_model(path):
    path = Path(path)
    module_name = path.stem 

    spec = importlib.util.spec_from_file_location(module_name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[module_name] = module
    spec.loader.exec_module(module)
    return module

def read_json_config(path):
    with open(path, 'r') as file:
        config = json.load(file)
    return config["generalSettings"]


def gui_model_to_code(gui_model: GUIModel, file_path: str, model: DomainModel):
    output_dir = os.path.dirname(file_path)
    if output_dir and not os.path.exists(output_dir):
        os.makedirs(output_dir)
    if not file_path.endswith('.py'):
        file_path += '.py'

    with open(file_path, 'w', encoding='utf-8') as f:
        # Write imports
        f.write("####################\n")
        f.write("# GUI MODEL #\n")
        f.write("####################\n\n")
        f.write("from besser.BUML.metamodel.gui import *\n")
        f.write("from besser.BUML.metamodel.structural import *\n")
        f.write("\n")

#-----------

        # Write enumerations only if they exist
        enumerations = sort(model.get_enumerations())
        if enumerations:
            f.write("# Enumerations\n")
            for enum in enumerations:
                enum_var_name = safe_class_name(enum.name)
                f.write(f"{enum_var_name}: Enumeration = Enumeration(\n")
                f.write(f"    name=\"{enum.name}\",\n")
                literals_str = ",\n\t\t\t".join([f"EnumerationLiteral(name=\"{lit.name}\")" for lit in sort(enum.literals)])
                f.write(
                    f"    literals={{\n"
                    f"            {literals_str}"
                    f"\n    }}")
                f.write("\n)\n\n")

        # Separate regular classes and association classes
        association_classes = []
        regular_classes = []
        for cls in sort(model.get_classes()):
            if isinstance(cls, AssociationClass):
                association_classes.append(cls)
            else:
                regular_classes.append(cls)

        # Write regular classes
        f.write("# Classes\n")
        for cls in regular_classes:
            cls_var_name = safe_class_name(cls.name)

            # Build class creation parameters
            class_params = [f'name="{cls.name}"']

            if cls.is_abstract:
                class_params.append('is_abstract=True')

            # Add metadata if it exists
            if hasattr(cls, 'metadata') and cls.metadata:
                metadata_params = []
                if cls.metadata.description:
                    metadata_params.append(f'description="{cls.metadata.description}"')
                if cls.metadata.uri:
                    metadata_params.append(f'uri="{cls.metadata.uri}"')
                if cls.metadata.icon:
                    metadata_params.append(f'icon="{cls.metadata.icon}"')

                if metadata_params:
                    metadata_str = f"Metadata({', '.join(metadata_params)})"
                    class_params.append(f'metadata={metadata_str}')

            f.write(f"{cls_var_name} = Class({', '.join(class_params)})\n")
        f.write("\n")

        # Write class members for regular classes
        for cls in regular_classes:
            cls_var_name = safe_class_name(cls.name)
            f.write(f"# {cls.name} class attributes and methods\n")

            # Write attributes
            for attr in sort(cls.attributes):
                attr_type = PRIMITIVE_TYPE_MAPPING.get(attr.type.name, safe_class_name(attr.type.name))
                visibility_str = f', visibility="{attr.visibility}"' if attr.visibility != "public" else ""
                f.write(f"{cls_var_name}_{attr.name}: Property = Property(name=\"{attr.name}\", "
                       f"type={attr_type}{visibility_str})\n")

            # Write methods
            for method in sort(cls.methods):
                method_type = PRIMITIVE_TYPE_MAPPING.get(method.type.name, safe_class_name(method.type.name)) if method.type else None
                visibility_str = f', visibility="{method.visibility}"' if method.visibility != "public" else ""

                # Build parameters dictionary
                params = {}
                if sort(method.parameters):
                    for param in method.parameters:
                        param_type = PRIMITIVE_TYPE_MAPPING.get(param.type.name, safe_class_name(param.type.name))
                        default_str = f", default_value='{param.default_value}'" if hasattr(param, 'default_value') and param.default_value is not None else ""
                        params[param.name] = f"Parameter(name='{param.name}', type={param_type}{default_str})"

                params_str = "{" + ", ".join(f"{param}" for name, param in params.items()) + "}"

                if method_type:
                    f.write(f"{cls_var_name}_m_{method.name}: Method = Method(name=\"{method.name}\""
                           f"{visibility_str}, parameters={params_str}, type={method_type})\n")
                else:
                    f.write(f"{cls_var_name}_m_{method.name}: Method = Method(name=\"{method.name}\""
                           f"{visibility_str}, parameters={params_str})\n")

            # Write assignments
            if sort(cls.attributes):
                attrs_str = ", ".join([f"{cls_var_name}_{attr.name}" for attr in cls.attributes])
                f.write(f"{cls_var_name}.attributes={{{attrs_str}}}\n")
            if sort(cls.methods):
                methods_str = ", ".join([f"{cls_var_name}_m_{method.name}" for method in cls.methods])
                f.write(f"{cls_var_name}.methods={{{methods_str}}}\n")
            f.write("\n")

#-----------
        for module in gui_model.modules:
            f.write("####################\n")
            f.write(f"# Module {module.name} #\n")
            f.write("####################\n\n")

            # Write screens in the module
            for screen in module.screens:
                screen_var_name = safe_class_name(screen.name)
                f.write(f"# Screen: {screen.name}\n")
                f.write(f"{screen_var_name}: Screen = Screen(\n")
                f.write(f"    name=\"{screen.name}\",\n")
                f.write(f"    description=\"{screen.description}\",\n")
                f.write(f"    x_dpi=\"{screen.x_dpi}\",\n")
                f.write(f"    y_dpi=\"{screen.y_dpi}\",\n")
                f.write(f"    screen_size=\"{screen.screen_size}\",\n")
                f.write(f"    is_main_page={ 'True' if screen.is_main_page else 'False' },\n")
                f.write("    view_elements=set()\n")
                f.write(")\n\n")

            existing_var = set()
            for screen in module.screens:
                for ve in screen.view_elements:
                    ve_var_name = safe_class_name(f"{ve.name[0].lower()}{ve.name[1:]}")
                    if ve_var_name in existing_var:
                        continue
                    if isinstance(ve, Button):
                        f.write(f"# View Element: {ve.name} in Screen: {screen.name}\n")
                        f.write(f"{ve_var_name}: Button = Button(\n")
                        f.write(f"    name=\"{ve.name}\",\n")
                        f.write(f"    description=\"{ve.description}\",\n")
                        f.write(f"    label=\"{ve.label}\",\n")
                        f.write(f"    buttonType={ve.buttonType},\n")
                        f.write(f"    actionType={ve.actionType},\n")
                        f.write(f"    targetScreen={None if ve.targetScreen == None else safe_class_name(ve.targetScreen.name)},\n")
                        f.write(")\n\n")
                    elif isinstance(ve, InputField):
                        f.write(f"# View Element: {ve.name} in Screen: {screen.name}\n")
                        f.write(f"{ve_var_name}: InputField = InputField(\n")
                        f.write(f"    name=\"{ve.name}\",\n")
                        f.write(f"    description=\"{ve.description}\",\n")
                        f.write(f"    type={ve.type},\n")
                        f.write(f"    validationRules={ve.validationRules},\n")
                        f.write(")\n\n")
                    elif isinstance(ve, DataList):
                        for ds in ve.list_sources:
                            ds_var_name = safe_class_name(f"{ds.name[0].lower()}{ds.name[1:]}")
                            if ds_var_name in existing_var:
                                continue
                            if isinstance(ds, Collection):
                                continue #tbd
                            elif isinstance(ds, File):
                                continue #tbd
                            elif isinstance(ds, DataSourceElement):
                                f.write(f"# Data Source: {ds.name} for DataList: {ve.name} in Screen: {screen.name}\n")
                                f.write(f"{ds_var_name}: DataSourceElement = DataSourceElement(\n")
                                f.write(f"    name=\"{ds.name}\",\n")
                                f.write(f"    dataSourceClass={safe_class_name(ds.dataSourceClass.name)},\n")
                                f.write(f"    fields=[{', '.join([f'{safe_class_name(ds.dataSourceClass.name)}_{field.name}' for field in ds.fields])}],\n")
                                f.write(")\n\n")
                            elif isinstance(ds, DataSource):
                                continue #tbd
                            existing_var.add(ds_var_name)
                        f.write(f"# View Element: {ve.name} in Screen: {screen.name}\n")
                        f.write(f"{ve_var_name}: DataList = DataList(\n")
                        f.write(f"    name=\"{ve.name}\",\n")
                        f.write(f"    description=\"{ve.description}\",\n")
                        f.write(f"    list_sources={{{', '.join([safe_class_name(f'{ds.name[0].lower()}{ds.name[1:]}') for ds in ve.list_sources])}}},\n")
                        f.write(")\n\n")
                    elif isinstance(ve, Menu):
                        continue #tbd
                    elif isinstance(ve,Form):
                        continue #tbd
                    elif isinstance(ve,Image):
                        continue #tbd
                    existing_var.add(ve_var_name)
                
                for ve in screen.view_elements:
                    ve_var_name = safe_class_name(f"{ve.name[0].lower()}{ve.name[1:]}")
                    f.write(f"{safe_class_name(screen.name)}.view_elements.add({ve_var_name})\n")
                f.write("\n")
        
            f.write(f"{safe_class_name(module.name)}: Module = Module(\n")
            f.write(f"    name=\"{module.name}\",\n")
            f.write(f"    screens={{{', '.join([safe_class_name(screen.name) for screen in module.screens])}}}\n")
            f.write(")\n\n")

        screen_compatibility_str = "True" if gui_model.screenCompatibility else "False"
        
        f.write(f"gui_model: GUIModel = GUIModel(\n")
        f.write(f"    name=\"{gui_model.name}\",\n")
        f.write(f"    package=\"{gui_model.package}\",\n")
        f.write(f"    versionCode=\"{gui_model.versionCode}\",\n")
        f.write(f"    versionName=\"{gui_model.versionName}\",\n")
        f.write(f"    description=\"{gui_model.description}\",\n")
        f.write(f"    screenCompatibility=\"{screen_compatibility_str}\",\n")
        f.write(f"    modules={{{', '.join([safe_class_name(module.name) for module in gui_model.modules])}}}\n")
        f.write(")\n")
    

    print(f"BUML model saved to {file_path}")