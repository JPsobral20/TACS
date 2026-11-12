import os
from jinja2 import Environment, FileSystemLoader
from besser.BUML.metamodel.structural import DomainModel, Class, Enumeration
from besser.generators import GeneratorInterface
from utils import read_json_config


class BackendGenerator(GeneratorInterface):
    """
    BackendGenerator is a class that implements the GeneratorInterface and is responsible
    for generating backend API code with CRUD operations based on the input B-UML model.

    Args:
        model (DomainModel): An instance of the DomainModel class representing the B-UML structural model.
        config (dict, optional): Configuration dictionary for customizing the generation. Defaults to {}.
        output_dir (str, optional): The output directory where the generated code will be 
            saved. Defaults to None.
    """
    
    def __init__(self, model: DomainModel, config: dict = {}, output_dir: str = None):
        super().__init__(model, output_dir)
        self.config = config
        self.classes = [cls for cls in model.types if isinstance(cls, Class)]
        self.enumerations = [enum for enum in model.types if isinstance(enum, Enumeration)]

    def generate(self, *args):
        """
        Generates backend API code with CRUD operations based on the provided B-UML model 
        and saves it to the specified output directory.
        If the output directory was not specified, the code generated will be stored in the 
        <current directory>/output folder.

        Args:
            *args: Additional arguments, first argument should be js_class_files list

        Returns:
            None
        """
        js_class_files = args[0] if args else []
        
        # Generate the main Flask application file
        self._generate_app_file()
        
        # Generate model classes file
        self._generate_models_file()
        
        # Generate CRUD routes for each class
        self._generate_routes_file()
        
        # Generate database configuration
        self._generate_database_config()
        
        # Generate requirements file
        self._generate_requirements()

    def _generate_app_file(self):
        """Generate the main Flask application file"""
        file_path = self.build_generation_path(file_name="app.py")
        templates_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "templates")
        env = Environment(loader=FileSystemLoader(templates_path))
        template = env.get_template('flask_app_template.py.j2')
        
        with open(file_path, mode="w", encoding='utf-8') as f:
            generated_code = template.render(
                classes=self.classes,
                config=self.config
            )
            f.write(generated_code)
        print("Flask app generated in the location: " + file_path)

    def _generate_models_file(self):
        """Generate the SQLAlchemy model classes file"""
        file_path = self.build_generation_path(file_name="models.py")
        templates_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "templates")
        env = Environment(loader=FileSystemLoader(templates_path))
        template = env.get_template('models_template.py.j2')
        
        with open(file_path, mode="w", encoding='utf-8') as f:
            generated_code = template.render(
                classes=self.classes,
                enumerations=self.enumerations,
                associations=self.model.associations,
                config=self.config
            )
            f.write(generated_code)
        print("Models generated in the location: " + file_path)

    def _generate_routes_file(self):
        """Generate the CRUD routes file"""
        file_path = self.build_generation_path(file_name="routes.py")
        templates_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "templates")
        env = Environment(loader=FileSystemLoader(templates_path))
        template = env.get_template('routes_template.py.j2')
        
        with open(file_path, mode="w", encoding='utf-8') as f:
            generated_code = template.render(
                classes=self.classes,
                config=self.config
            )
            f.write(generated_code)
        print("Routes generated in the location: " + file_path)

    def _generate_database_config(self):
        """Generate database configuration file"""
        file_path = self.build_generation_path(file_name="database.py")
        templates_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "templates")
        env = Environment(loader=FileSystemLoader(templates_path))
        template = env.get_template('database_template.py.j2')
        
        with open(file_path, mode="w", encoding='utf-8') as f:
            generated_code = template.render(
                config=self.config
            )
            f.write(generated_code)
        print("Database config generated in the location: " + file_path)

    def _generate_requirements(self):
        """Generate requirements.txt file"""
        file_path = self.build_generation_path(file_name="backend_requirements.txt")
        templates_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "templates")
        env = Environment(loader=FileSystemLoader(templates_path))
        template = env.get_template('requirements_template.txt.j2')
        
        with open(file_path, mode="w", encoding='utf-8') as f:
            generated_code = template.render()
            f.write(generated_code)
        print("Requirements generated in the location: " + file_path)


if __name__ == "__main__":
    from utils import load_model
    
    structural_model = load_model("../Output/StructuralModel.py").domain_model
    config = read_json_config("../Diagrams/config.json")
    generator = BackendGenerator(model=structural_model, config=config, output_dir="../Output/backend")
    generator.generate([])