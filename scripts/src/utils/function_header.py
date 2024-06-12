from datetime import datetime
import os
from pathlib import Path
from jinja2 import Environment, FileSystemLoader


def get(documentation: str = None, is_feature: bool = False) -> str:
    env = Environment(loader=FileSystemLoader(os.path.join(Path(__file__).parent / "templates")))
    template = env.get_template("header.jinja")
    return template.render(year=datetime.now().year, doc=documentation, is_feature=is_feature).replace("\r\n", "\n").strip()
