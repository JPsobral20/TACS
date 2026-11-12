import os
from jinja2 import Environment, FileSystemLoader
from besser.BUML.metamodel.structural import DomainModel
from besser.BUML.metamodel.gui import GUIModel
from besser.generators import GeneratorInterface
from besser.utilities import sort_by_timestamp
from utils import load_model
from utils import read_json_config

class CSSGenerator(GeneratorInterface):
    """
    CSSGenerator is a class that implements the GeneratorInterface and is responsible
    for generating the html and css model code based on the input B-UML model.

    Args:
        model (GUIModel): An instance of the GUIModel class representing the B-UML model.
        output_dir (str, optional): The output directory where the generated code will be 
            saved. Defaults to None.
    """
    def __init__(self, model: GUIModel, config: dict = {}, output_dir: str = None):
        super().__init__(model, output_dir)
        self.config = config

    def generate(self, *args):
        """
        Generates CSS code based on the provided B-UML model and saves it to 
        the specified output directory.
        If the output directory was not specified, the code generated will be stored in the 
        <current directory>/output folder.

        Returns:
            None
        """
        # extract config from args
        file_path = self.build_generation_path(file_name="styles.css")
        templates_path = os.path.join(os.path.dirname(
            os.path.abspath(__file__)), "templates")
        env = Environment(loader=FileSystemLoader(templates_path))
        template = env.get_template('css_template.css.j2')
        with open(file_path, mode="w", encoding='utf-8') as f:
            generated_code = template.render(config=self.config)
            f.write(generated_code)
        print("CSS generated in the location: " + file_path)

class WebGenerator(GeneratorInterface):
    """
    WebGenerator is a class that implements the GeneratorInterface and is responsible
    for generating the html and css model code based on the input B-UML model.

    Args:
        model (GUIModel): An instance of the GUIModel class representing the B-UML model.
        output_dir (str, optional): The output directory where the generated code will be 
            saved. Defaults to None.
    """
    def __init__(self, model: DomainModel, gui_model: GUIModel, config: dict = {}, output_dir: str = None):
        super().__init__(model, output_dir)
        self.gui_model = gui_model
        self.config = config

    def generate(self, *args):
        """
        Generates web model code based on the provided B-UML model and saves it to 
        the specified output directory.
        If the output directory was not specified, the code generated will be stored in the 
        <current directory>/output folder.

        Returns:
            None
        """
        # extract config from args
        js_class_files = args[0]
        css_generator = CSSGenerator(self.gui_model, config=self.config, output_dir=os.path.join(self.output_dir, "static"))
        css_generator.generate()

        templates_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "templates")
        env = Environment(loader=FileSystemLoader(templates_path))

        # Generate HTML and JS files for each screen
        for module in self.gui_model.modules:
            for screen in module.screens:
                # Generate HTML file
                html_file_path = self.build_generation_path(file_name=screen.name + ".html")
                html_template = env.get_template('html_template.html.j2')
                with open(html_file_path, mode="w", encoding='utf-8') as f:
                    generated_code = html_template.render(
                        screen=screen, 
                        structural_model=self.model, 
                        gui_model=self.gui_model,
                        js_class_files=js_class_files, 
                        sort_by_timestamp=sort_by_timestamp, 
                        config=self.config
                    )
                    f.write(generated_code)
                print("HTML generated in the location: " + html_file_path)

                # Generate screen-specific JavaScript file
                js_file_path = os.path.join(self.output_dir, "js", screen.name + ".js")
                os.makedirs(os.path.dirname(js_file_path), exist_ok=True)
                js_template = env.get_template('js_screen_template.js.j2')
                with open(js_file_path, mode="w", encoding='utf-8') as f:
                    generated_code = js_template.render(
                        screen=screen,
                        structural_model=self.model,
                        gui_model=self.gui_model,
                        config=self.config
                    )
                    f.write(generated_code)
                print("Screen JS generated in the location: " + js_file_path)

if __name__ == "__main__":
    gui_model = load_model("./Output/gui_model_example.py").gui_model
    structural_model = load_model("./Output/structural_model.py").domain_model
    config = read_json_config("./Diagrams/config.json")
    generator = WebGenerator(model=structural_model, gui_model=gui_model, config=config, output_dir="./Output/app")

    generator.generate(js_class_files=[])