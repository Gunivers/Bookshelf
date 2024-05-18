import re
import yaml
from files_provider.files_provider import Module
import definitions

lines = {
     "name": {
          "syntax": r"^bs\.[a-z0-1-_]+$"
        },
     "display_name": {
        "syntax": r"^.*$"
     },
     "description": {
        "syntax": r"^.*$"
     },
     "documentation": {
        "syntax": re.escape(definitions.DOC_URL) + r".*$"
         },
     }

def check_metadata_yaml(yaml: dict, path) -> list[str]:
    errors = []
    for key, value in lines.items():
        key_value = yaml.get(key, None)
        if not key_value or not re.match(value["syntax"], key_value):
            errors.append(f"❌ Metadata file for module '{path}' has an invalid value for '{key}'. Should match regex '" + value["syntax"] + "'.")
    return errors


def check(modules: list[Module]) -> bool:
    print('🧩 The following modules will be analyzed:')
    print("\n".join([ "  " + str(module.path.relative_to(definitions.ROOT_DIR)) for module in modules]))

    errors: list[str] = []

    for module in modules:
        metadata_path = module.path / ".metadata" / "metadata.yml"
        path = module.path.relative_to(definitions.ROOT_DIR)
        if not metadata_path.exists():
            errors.append(f"❌ Metadata file not found for module '{path}'.")
            continue
        with open(metadata_path, "r") as f:
            content = yaml.safe_load(f)
            errors.extend(check_metadata_yaml(content, path))




    if len(errors) > 0:
        print("\n".join(errors))
        return True

