.PHONY: build up

# Create virtual environment and install dependencies
build:
	python -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt

# Generate the app and serve it locally
up: 
	source .venv/bin/activate && python src/m2t.py && cd Output/app/ && python -m http.server 8000 && python ./backend/app.py