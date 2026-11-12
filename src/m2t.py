from m2t_js_classes import JavascriptClassGenerator
from m2t_web import WebGenerator
from m2t_backend import BackendGenerator
from utils import *
import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Model to Text Transformation")

    parser.add_argument(
        "--config-path",
        type=str,
        default="./Diagrams/config.json", # Needs to be changed into real config file
        help="Path to the specific configuration.",
    )
    parser.add_argument(
        "--structural-model-path",
        type=str,
        default="./Output/StructuralModel.py",
        help="Path to the specific structural metamodel.",
    )
    parser.add_argument(
        "--gui-model-path",
        type=str,
        default="./Output/GUIModel.py",
        help="Path to the specific structural metamodel.",
    )
    parser.add_argument(
        "--output-directory",
        type=str,
        default="./Output/app/",
        help="Path to the output directory.",
    )

    # Parse the command-line arguments
    args = parser.parse_args()
    structural_model = load_model(args.structural_model_path).domain_model
    js_generator = JavascriptClassGenerator(structural_model, output_dir=args.output_directory+"js")
    config = read_json_config(args.config_path)
    class_files = js_generator.generate()
    gui_model = load_model(args.gui_model_path).gui_model
    web_generator = WebGenerator(model=structural_model, gui_model=gui_model, config=config, output_dir=args.output_directory)
    web_generator.generate(class_files)
    backend_generator = BackendGenerator(model=structural_model, config=config, output_dir=args.output_directory+"backend")
    backend_generator.generate(class_files)