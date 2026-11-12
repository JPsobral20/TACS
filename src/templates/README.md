# HTML/CSS/JavaScript Code Generator for BESSER B-UML

This project implements a comprehensive **Model-to-Text (M2T)** code generator that transforms BESSER B-UML (Business-UML) models into fully functional web applications with HTML, CSS, and JavaScript.

## 🎯 Features

### ✨ What's Been Implemented

1. **HTML Generation** (`html_template.html.j2`)
   - Renders B-UML GUI screens with proper structure
   - Supports multiple UI elements:
     - DataList components for displaying collections
     - Button components with various types (Raised, Outlined, Text, FAB, Icon)
     - Form components with input fields
     - Standalone input fields
   - Responsive layout with semantic HTML5
   - Dynamic script loading for class files and screen-specific JS

2. **CSS Generation** (`css_template.css.j2`)
   - Modern, responsive styling system
   - Configurable color scheme via `config.json` (`uiSettings.primaryColor`, `secondaryColor`)
   - Card-based item display with grid layout
   - Hover effects and smooth transitions
   - Button type-specific styling
   - Mobile-responsive with media queries
   - Utility classes for common patterns

3. **JavaScript Class Generation** (`m2t_js_classes.py`)
   - Generates JavaScript class files from structural model
   - Creates one `.js` file per domain class
   - Includes constructors with all attributes
   - Configuration-aware code generation

4. **Screen-Specific JavaScript Generation** (`js_screen_template.js.j2`)
   - Auto-generates JS for each GUI screen
   - **Dynamic data loading** from `data.json`
   - **Real-time search filtering** functionality
   - **Clickable item cards** that navigate to detail pages
   - Button action handling (Navigate, Add, Edit, Delete)
   - Utility functions for formatting dates and currency

5. **Sample Data** (`data/data.json`)
   - 8 sample items with realistic data
   - Categories: Electronics, Books, Clothing
   - Includes prices, conditions, descriptions, and timestamps

## 📁 Project Structure

```
TACS/
├── src/
│   ├── templates/
│   │   ├── html_template.html.j2          # HTML page template
│   │   ├── css_template.css.j2            # CSS styling template
│   │   ├── js_classes_template.js.j2      # Domain class template
│   │   └── js_screen_template.js.j2       # Screen JS template (NEW)
│   ├── m2t.py                              # Main transformation script
│   ├── m2t_web.py                          # Web generator (HTML/CSS)
│   ├── m2t_js_classes.py                   # JavaScript class generator
│   └── utils.py                            # Utility functions
├── Output/
│   └── app/
│       ├── index.html                      # Welcome page
│       ├── MainPage.html                   # Generated screens
│       ├── ItemVisualizationPage.html
│       ├── static/
│       │   └── styles.css                  # Generated CSS
│       ├── js/
│       │   ├── MainPage.js                 # Screen-specific JS (NEW)
│       │   ├── ItemVisualizationPage.js    # Screen-specific JS (NEW)
│       │   ├── Item.js                     # Domain classes
│       │   ├── User.js
│       │   └── ...
│       └── data/
│           └── data.json                   # Sample data (NEW)
├── Diagrams/
│   ├── config.json                         # Configuration file
│   ├── GUIModel.py                         # GUI metamodel
│   └── StructuralModel.py                  # Domain metamodel
└── requirements.txt
```

## 🚀 Usage

### Prerequisites

```bash
pip install -r requirements.txt
```

Requirements:
- `besser==4.3` - BESSER B-UML framework
- `jinja2>=3.1.0` - Template engine

### Generate the Application

```bash
# Basic usage (uses defaults)
python src/m2t.py

# With custom paths
python src/m2t.py \
  --config-path ./Diagrams/config.json \
  --structural-model-path ./Output/StructuralModel.py \
  --gui-model-path ./Output/GUIModel.py \
  --output-directory ./Output/app/
```

### Run the Application

```bash
# Start HTTP server
cd Output/app
python3 -m http.server 8000

# Open in browser
# Navigate to http://localhost:8000
```

## 🎨 Key Features Demonstrated

### 1. **Clickable Item Cards**
Items in the MainPage are rendered as clickable cards that link to `ItemVisualizationPage.html?id=X`:

```javascript
const itemCard = document.createElement('a');
itemCard.className = 'list-item';
itemCard.href = 'ItemVisualizationPage.html?id=' + item.itemId;
```

### 2. **Real-Time Search**
The search input filters items dynamically as you type:

```javascript
searchInput.addEventListener('input', (e) => {
    const searchTerm = e.target.value.toLowerCase();
    filteredItems = allItems.filter(item => {
        return (
            item.title.toLowerCase().includes(searchTerm) ||
            item.description.toLowerCase().includes(searchTerm) ||
            item.category.toLowerCase().includes(searchTerm)
        );
    });
    renderDataList_RecentItemsDataList();
});
```

### 3. **Responsive Card Grid**
CSS Grid automatically adjusts columns based on screen size:

```css
.list-items {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 20px;
}
```

### 4. **Configuration-Driven Styling**
Colors and UI settings are read from `config.json`:

```css
.screen-header {
  background-color: {{ config.uiSettings.primaryColor }};
}
```

## 🔧 Configuration

Edit `Diagrams/config.json` to customize:

```json
{
  "generalSettings": {
    "uiSettings": {
      "primaryColor": "#FF0000",
      "secondaryColor": "#00FF00",
      "thirdColor": "#0000FF"
    },
    "itemSettings": {
      "allowedItemsCategories": [
        { "itemName": "Electronics" },
        { "itemName": "Books" },
        { "itemName": "Clothing" }
      ]
    }
  }
}
```

## 📊 Generated Output

From a B-UML model, the generator creates:

1. **HTML Files** - One per screen with:
   - Semantic structure
   - Data lists with proper IDs
   - Buttons with action handlers
   - Search inputs
   - Forms with validation

2. **CSS File** - Single stylesheet with:
   - Component-specific styles
   - Responsive design
   - Theme colors from config
   - Utility classes

3. **JavaScript Files**:
   - **Domain classes** (e.g., `Item.js`, `User.js`)
   - **Screen controllers** (e.g., `MainPage.js`, `ItemVisualizationPage.js`)
     - Data loading
     - Search filtering
     - Navigation handling
     - Dynamic rendering

## 🎓 B-UML Integration

The generator works with BESSER B-UML models:

```python
from besser.BUML.metamodel.gui import *

# Define a screen
main_screen = Screen(
    name="MainPage",
    description="Main landing screen",
    view_elements=[data_list, search_input, buttons...]
)

# Define data sources
datasource = DataSourceElement(
    name="Items",
    dataSourceClass=Item,
    fields=[Item_title, Item_description]
)
```

## 🌟 What Makes This Special

1. **Fully Functional** - Not just static HTML, but working JavaScript functionality
2. **Data-Driven** - Items load from JSON and can be easily extended
3. **Interactive** - Search, filter, and navigation all work out of the box
4. **Maintainable** - Changes to the model regenerate everything consistently
5. **Configurable** - Easy to customize colors, categories, and settings
6. **Responsive** - Works on desktop, tablet, and mobile
7. **Modern** - Uses current web standards (ES6+, Grid, Flexbox)

## 📝 Example Workflow

1. **Model Your Domain** - Define classes in B-UML structural model
2. **Design Your GUI** - Create screens with DataLists, Buttons, Forms
3. **Configure** - Set colors and settings in `config.json`
4. **Generate** - Run `python src/m2t.py`
5. **Test** - Start server and open in browser
6. **Iterate** - Modify models and regenerate

## 🎯 Future Enhancements

Potential additions:
- Backend API integration
- Form submission handling
- User authentication screens
- CRUD operations for items
- WebSocket for real-time updates
- Advanced filtering (by category, price range)
- Image upload for items
- Pagination for large datasets

## 📚 Documentation References

- [BESSER B-UML Documentation](https://besser.readthedocs.io/en/latest/)
- [Jinja Template Documentation](https://jinja.palletsprojects.com/en/stable/)
- [B-UML GUI Model Types](https://besser.readthedocs.io/en/latest/buml_language/model_types/gui.html)

## 🤝 Contributing

To extend the generator:
1. Modify templates in `src/templates/`
2. Update generator classes in `src/m2t_*.py`
3. Test with your B-UML models
4. Regenerate and verify output

---

**Built with ❤️ using BESSER B-UML and Jinja2**
