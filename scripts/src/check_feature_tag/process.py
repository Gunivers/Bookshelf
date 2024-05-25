from functools import partial
import re
from colored import Fore, Style
from files_provider.files_provider import Artifact
from function_call_getter.function_call_getter import FunctionCallGetter
from function_call_getter._types import (VisitableFeatureSet, VisitableFeature, Visitor)
import definitions

date = {
            "date": {
                "optional": False,
                "type": "string",
                "syntax": r"^\d{4}/\d{2}/\d{2}$"
            },
            "minecraft_version": {
                "optional": False,
                "type": "string",
                "syntax": "^.*$"
            }
        }

bookshelf_key = {
    "feature": {
        "optional": False,
        "type": "bool",
        "value": True
    },
    "documentation": {
        "optional": False,
        "type": "string",
        "syntax": r"^" + re.escape(definitions.DOC_URL) + r".*$"
    },
    "authors": {
        "optional": False,
        "type": "list",
        "tags": [ "not_empty" ]
    },
    "contributors": {
        "optional": True,
        "type": "list",
        "tags": [ "not_empty" ]
    },
    "created": {
        "optional": False,
        "type": "object",
        "elements": date
    },
    "updated": {
        "optional": False,
        "type": "object",
        "elements": date
    }
}

def check(artifact_paths: list[Artifact]) -> bool:
    """
    return True if errors were found
    """

    print(f'📄 The following files will be reviewed:{Fore.dark_gray}')
    print("\n".join([ "    " + str(path.real_path.relative_to(definitions.ROOT_DIR)) for path in artifact_paths]) + Style.reset)

    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(artifact_paths)
    print(f"📦 Found {len(feature_set.features)} features:{Fore.dark_gray}")
    print("\n".join([ "    " + feature.mc_path for feature in feature_set.features]) + Style.reset)

    print("⏳ Checking their specified metadata…")

    errors: list[str] = []

    visitor = Visitor([VisitableFeature], partial(callback, errors))
    visitor.visit(feature_set)

    for error in errors:
        print(error)

    if len(errors) == 0:
        print(f"✅ Done!")
    else:
        print(f"❌ Done with errors.")

    return len(errors) > 0

def callback(errors: list[str], feature: VisitableFeature) -> bool:
    result = check_feature(feature)
    if isinstance(result, list):
        errors.extend(result)
    return True

def check_feature(feature: VisitableFeature) -> list[str] | dict:
    errors: list[str] = []
    metadata = feature.content.get(definitions.FEATURE_TAG_NAMESPACE, None)
    if metadata == None:
        errors.append(f"   {Fore.red} No metadata in feature tag '{feature.mc_path}'.{Style.reset}")
    else:
        for key, value in bookshelf_key.items():
            errors.extend(check_key(feature.mc_path, [definitions.FEATURE_TAG_NAMESPACE, key], value, metadata))
    return errors or feature.content.get(definitions.FEATURE_TAG_NAMESPACE)


def check_key(tag_path: str, path: list[str], pattern: dict, obj: dict) -> list[str]:
    errors: list[str] = []
    type = pattern.get("type", None)
    value = obj.get(path[-1], None)
    if value == None and pattern.get("optional", True) == False:
        errors.append(f"   {Fore.red} Missing key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}'.{Style.reset}")
    elif pattern.get("optional", True) == False:
        if type == "string":
            syntax = pattern.get("syntax", None)
            if syntax != None and not re.match(syntax, value):
                errors.append(f"   {Fore.red} Invalid syntax for key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}'.{Style.reset}")

        elif type == "list":
            if not isinstance(value, list):
                errors.append(f"   {Fore.red} Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be a list.{Style.reset}")
            elif "not_empty" in pattern.get("tags", []):
                if len(value) == 0:
                    errors.append(f"   {Fore.red} Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should not be empty.{Style.reset}")

        if type == "object":
            if not isinstance(value, dict):
                errors.append(f"   {Fore.red} Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be an object.{Style.reset}")
            else:
                for key, element in pattern.get("elements", {}).items():
                    errors.extend(check_key(tag_path, path + [key], element, value))

        if type == "bool":
            if not isinstance(value, bool):
                errors.append(f"   {Fore.red} Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be a boolean.{Style.reset}")
            elif value != pattern.get("value", False):
                errors.append(f"   {Fore.red} Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be {pattern.get('value', False)}.{Style.reset}")

    return errors

