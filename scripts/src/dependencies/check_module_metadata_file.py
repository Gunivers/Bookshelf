import re
import yaml
from files_provider.files_provider import Module
import definitions
from colored import Fore, Style

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

def check_metadata_yaml(yaml: dict, path) -> list[str]:
    errors = []
    for key, value in lines.items():
        key_value = yaml.get(key, None)
        if not key_value and not value["optional"]:
            errors.append(f"{Fore.red} Metadata file for module '{path}' is missing required key '{key}'.{Style.reset}")
        elif key_value:
            if value.get("elements", None):
                for element in key_value:
                    __check_metadata_value(key, element, value["elements"]["syntax"], path, errors)
            else:
                __check_metadata_value(key, key_value, value["syntax"], path, errors)
    return errors

def __check_metadata_value(key: str, value: str, syntax: str, path: str, errors: list[str]):
    if not re.match(syntax, value):
        errors.append(f"{Fore.red} Metadata file for module '{path}' has an invalid value for '{key}'. Found '{value}', should match regex '{syntax}'.{Style.reset}")

def check_module(module: Module) -> list[str] | dict:
    errors = []
    metadata_path = module.path / ".metadata" / "metadata.yml"
    path = module.path.relative_to(definitions.ROOT_DIR)
    if not metadata_path.exists():
        errors.append(f"{Fore.red}Metadata file not found for module '{path}'.{Style.reset}")
    else:
        with open(metadata_path, "r") as f:
            content = yaml.safe_load(f)
            errors.extend(check_metadata_yaml(content, path))
            if len(errors) == 0:
                return content
    return errors


def check(modules: list[Module]) -> bool:
    print(f'🧩 The following modules will be analyzed: {Fore.dark_gray}')
    print("\n".join([ "    " + str(module.path.relative_to(definitions.ROOT_DIR)) for module in modules]) + Style.reset)

    errors: list[str] = []

    for module in modules:
        result = check_module(module)
        if isinstance(result, list):
            errors.extend(result)

    if len(errors) > 0:
        print("\n".join(errors))
        print (f"❌ Done with errors.")
        return True
    else:
        print(f"✅ Done!")
        return False
