import json
from pathlib import Path
import re
from typing import Callable
from logger.logger import Logger
from files_provider.files_provider import Module
import definitions


def check_icon(name: str, path: str, logger: Logger) -> bool:
    icon_path = path / ".metadata" / name
    if not icon_path.exists():
        logger.print_err(f"Icon '{name}' is missing at path '{path.relative_to(definitions.ROOT_DIR)}'.")
        return False
    return True


lines = {
     "name": {
        "syntax": r"^bs\.[a-z0-1-_]+$",
        "optional": False
    },
     "display_name": {
        "syntax": r"^.*$",
        "optional": False
     },
     "description": {
        "syntax": r"^.*$",
        "optional": False
     },
     "icon": {
         "syntax": r"^.*$",
         "validator": check_icon,
         "optional": True,
         "warning_if_missing": True
     },
     "documentation": {
        "syntax": re.escape(definitions.DOC_URL) + r".*$",
        "optional": False
     },
     "weak_dependencies": {
         "elements": {
                "syntax": r"^bs\.[a-z0-1-_]+$"
         },
         "optional": True
    }
}

def check_metadata_json(yaml: dict, path: Path, logger: Logger):
    relative_path = path.relative_to(definitions.ROOT_DIR)
    for key, value in lines.items():
        key_value = yaml.get(key, None)
        if not key_value and not value["optional"]:
            logger.print_err(f"Metadata file for module '{relative_path}' is missing required key '{key}'.")
        elif key_value:
            if value.get("elements", None):
                for element in key_value:
                    __check_metadata_value(key, element, value["elements"]["syntax"], path, value.get("validator", None), logger)
            else:
                __check_metadata_value(key, key_value, value["syntax"], path, value.get("validator", None), logger)
        else:
            if value.get("warning_if_missing", False):
                logger.print_warn(f"Metadata file for module '{relative_path}' is missing optional key '{key}'. You should consider adding it.")


def __check_metadata_value(key: str, value: str, syntax: str, path: str, validator: Callable[[str, str, Logger], bool] | None, logger: Logger):
    if not re.match(syntax, value):
        relative_path = path.relative_to(definitions.ROOT_DIR)
        logger.print_err(f"Metadata file for module '{relative_path}' has an invalid value for '{key}'. Found '{value}', should match regex '{syntax}'.")
    if validator:
        validator(value, path, logger)



def check_module(module: Module, logger: Logger) -> dict:
    metadata_path = module.path / ".metadata" / "metadata.json"
    path = module.path.relative_to(definitions.ROOT_DIR)
    if not metadata_path.exists():
        logger.print_err(f"Metadata file not found for module '{path}'.")
    else:
        with open(metadata_path, "r") as f:
            content = json.load(f)
            check_metadata_json(content, module.path, logger)
            if not logger.has_level_errors():
                return content


def check(modules: list[Module]) -> bool:
    logger = Logger()
    logger.print_step('The following modules will be analyzed:', '🧩')
    logger.print_log(*[str(module.path.relative_to(definitions.ROOT_DIR)) for module in modules])

    logger.print_step("Checking their metadata file…", "⏳")
    for module in modules:
        logger.print_log(f"Checking module '{module.path.relative_to(definitions.ROOT_DIR)}'.")
        check_module(module, logger)

    return logger.print_done()
