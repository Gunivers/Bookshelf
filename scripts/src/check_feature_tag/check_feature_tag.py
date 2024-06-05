from functools import partial
import re
from files_provider.files_provider import Artifact
from function_call_getter.function_call_getter import FunctionCallGetter
from function_call_getter._types import (VisitableFeatureSet, VisitableFeature, Visitor)
import definitions
from logger import newLogger
from logger.logger import Logger
from files_provider._types import Feature

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

    logger = newLogger()
    logger.print_step("The following files will be reviewed:", "📄")
    logger.print_log(*[str(path.real_path.relative_to(definitions.ROOT_DIR)) for path in artifact_paths])

    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(artifact_paths)
    logger.print_step(f"Found {len(feature_set.features)} features:", "📦")
    logger.print_log(*[feature.mc_path for feature in feature_set.features])

    logger.print_step("Checking their specified metadata…", "⏳")

    visitor = Visitor([VisitableFeature], partial(__callback, logger))
    visitor.visit(feature_set)

    return logger.print_done()

def __callback(logger: Logger, feature: VisitableFeature) -> bool:
    check_feature(Feature(feature.real_path, feature.mc_path, feature.content), logger)
    return True

def check_feature(feature: Feature, logger: Logger) -> dict:
    metadata = feature._content.get(definitions.FEATURE_TAG_NAMESPACE, None)
    if metadata == None:
        logger.print_err(f"No metadata in feature tag '{feature.mc_path}'.")
    else:
        for key, value in bookshelf_key.items():
            __check_key(feature.mc_path, [definitions.FEATURE_TAG_NAMESPACE, key], value, metadata, logger)
    return feature._content.get(definitions.FEATURE_TAG_NAMESPACE)


def __check_string(value, path: list[str], pattern: dict, tag_path: str, logger: Logger):
    syntax = pattern.get("syntax", None)
    if syntax != None and not re.match(syntax, value):
        logger.print_err(f"Invalid syntax for key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}'.")

def __check_list(value, path: list[str], pattern: dict, tag_path: str, logger: Logger):
    if not isinstance(value, list):
        logger.print_err(f"Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be a list.")
    elif "not_empty" in pattern.get("tags", []):
        if len(value) == 0:
            logger.print_err(f"Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should not be empty.")

def __check_object(value, path: list[str], pattern: dict, tag_path: str, logger: Logger):
    if not isinstance(value, dict):
        logger.print_err(f"Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be an object.")
    else:
        for key, element in pattern.get("elements", {}).items():
            __check_key(tag_path, path + [key], element, value, logger)

def __check_bool(value, path: list[str], pattern: dict, tag_path: str, logger: Logger):
    if not isinstance(value, bool):
        logger.print_err(f"Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be a boolean.")
    elif value != pattern.get("value", False):
        logger.print_err(f"Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be {pattern.get('value', False)}.")

def __check_key(tag_path: str, path: list[str], pattern: dict, obj: dict, logger: Logger):
    type = pattern.get("type", None)
    value = obj.get(path[-1], None)
    if value == None and pattern.get("optional", True) == False:
        logger.print_err(f"Missing key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}'.")
    elif pattern.get("optional", True) == False:
        if type == "string":
            __check_string(value, path, pattern, tag_path, logger)
        elif type == "list":
            __check_list(value, path, pattern, tag_path, logger)
        elif type == "object":
            __check_object(value, path, pattern, tag_path, logger)
        elif type == "bool":
            __check_bool(value, path, pattern, tag_path, logger)

