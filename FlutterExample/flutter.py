
from besser.BUML.metamodel.gui import *
from besser.BUML.metamodel.structural import *
from besser.generators.flutter import FlutterGenerator
from StructuralModel import domain_model
from GUIModel import gui_model, MainPage

# gui_module = load_model(args.gui_model_path)
    # gui_model: GUIModel = gui_module.gui_model
    
    # structural_module = load_model(args.structural_model_path)
    # domain_model = structural_module.domain_model

code_gen = FlutterGenerator(model=domain_model, gui_model=gui_model, main_page=MainPage)

# Generate the code files for your Flutter application by calling the 'generate' method:
code_gen.generate()
