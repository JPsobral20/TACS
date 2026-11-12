import os
from jinja2 import Environment, FileSystemLoader
from besser.BUML.metamodel.structural import DomainModel
from besser.generators import GeneratorInterface
from besser.utilities import sort_by_timestamp
from utils import load_model
from utils import read_json_config

class JavascriptClassGenerator(GeneratorInterface):
    """
    JavascriptClassGenerator is a class that implements the GeneratorInterface and is responsible
    for generating the javascript domain model code based on the input B-UML model.

    Args:
        model (DomainModel): An instance of the DomainModel class representing the B-UML model.
        output_dir (str, optional): The output directory where the generated code will be 
            saved. Defaults to None.
    """
    def __init__(self, model: DomainModel, config: dict = {}, output_dir: str = None):
        super().__init__(model, output_dir)
        self.config = config

    def generate(self, *args):
        """
        Generates javascript domain model code based on the provided B-UML model and saves it to 
        the specified output directory.
        If the output directory was not specified, the code generated will be stored in the 
        <current directory>/output folder.

        Returns:
            Output files, but store the generated code as multiple files named "<class_name>.js"
        """
        # extract config from args
        output_files = []
        for class_obj in self.model.classes_sorted_by_inheritance():
            file_path = self.build_generation_path(file_name=class_obj.name+".js")
            templates_path = os.path.join(os.path.dirname(
                os.path.abspath(__file__)), "templates")
            env = Environment(loader=FileSystemLoader(templates_path))
            template = env.get_template('js_classes_template.js.j2')
            with open(file_path, mode="w", encoding='utf-8') as f:
                generated_code = template.render(class_obj=class_obj, sort_by_timestamp=sort_by_timestamp, config=self.config)
                f.write(generated_code)
            print("Code generated in the location: " + file_path)
            output_files.append(f"js/{class_obj.name}.js")
        return output_files

if __name__ == "__main__":
    structural_model = load_model("./Output/structural_model.py").domain_model
    config = read_json_config("./Diagrams/config.json")
    generator = JavascriptClassGenerator(structural_model, output_dir="./Output/app/js", config=config)
    generator.generate()