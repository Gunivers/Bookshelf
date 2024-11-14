import json
from datetime import datetime
from jinja2 import Template
from pathlib import Path
from pydantic import ValidationError


ROOT_DIR = Path(__file__).parent.parent
MODULES_DIR = ROOT_DIR / 'modules'


def load_json(file_path: Path) -> dict|list:
    """
    Loads data from a JSON file.
    """
    return json.loads((ROOT_DIR / file_path).read_text(encoding="utf-8"))


def render_template(template_path: Path, **kwargs) -> str:
    """
    Loads a Jinja2 template from a file.
    """
    template = Template(template_path.read_text(encoding="utf-8"))
    return template.render(now=datetime.now, **kwargs)


def format_validation_errors(e: ValidationError) -> str:
    """
    Formats validation errors for better readability.
    """
    errors = (f"{'.'.join(map(str, error['loc']))}: {error['msg']}" for error in e.errors())
    return "\n    - " + "\n    - ".join(errors)


def write_json(file_path: Path, data: dict|list):
    """
    Write data to a JSON file.
    """
    with open(ROOT_DIR / file_path, "w") as file:
        json.dump(data, file, indent=2)
