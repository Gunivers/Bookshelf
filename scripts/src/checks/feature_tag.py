from files_provider._types import Feature
from files_provider.files_provider import Artifact
from function_call_getter._types import (VisitableFeatureSet, VisitableFeature, Visitor)
from function_call_getter.function_call_getter import FunctionCallGetter
from functools import partial
from logger import BaseLogger, new_logger
import definitions
import re


date = {
    "date": {
        "optional": False,
        "type": "string",
        "syntax": r"^\d{4}/\d{2}/\d{2}$",
    },
    "minecraft_version": {
        "optional": False,
        "type": "string",
        "syntax": "^.*$",
    }
}

bookshelf_key = {
    "feature": {
        "optional": False,
        "type": "bool",
        "value": True,
    },
    "documentation": {
        "optional": False,
        "type": "string",
        "syntax": fr"^{re.escape(definitions.DOCUMENTATION_URL)}.*$",
    },
    "authors": {
        "optional": False,
        "type": "list",
        "tags": [ "not_empty" ],
    },
    "contributors": {
        "optional": True,
        "type": "list",
        "tags": [ "not_empty" ],
    },
    "created": {
        "optional": False,
        "type": "object",
        "elements": date,
    },
    "updated": {
        "optional": False,
        "type": "object",
        "elements": date,
    }
}


def check(artifact_paths: list[Artifact]) -> bool:
    """
    return True if errors were found
    """
    logger = new_logger()
    logger.step("📄 The following files will be reviewed:")
    logger.print(*[str(path.real_path.relative_to(definitions.ROOT_DIR)) for path in artifact_paths])

    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(artifact_paths)
    logger.step(f"📦 Found {len(feature_set.features)} features:")
    logger.print(*[feature.mc_path for feature in feature_set.features])

    logger.step("⏳ Checking their specified metadata…")

    visitor = Visitor([VisitableFeature], partial(__callback, logger))
    visitor.visit(feature_set)

    return logger.done()


def __callback(logger: BaseLogger, feature: VisitableFeature) -> bool:
    check_feature(Feature(feature.real_path, feature.mc_path, feature.content), logger)
    return True


def check_feature(feature: Feature, logger: BaseLogger) -> dict:
    metadata = feature._content.get(definitions.FEATURE_TAG_NAMESPACE, None)
    if metadata is not None and metadata.get("feature", False):
        for key, value in bookshelf_key.items():
            __check_key(feature.mc_path, [definitions.FEATURE_TAG_NAMESPACE, key], value, metadata, logger)
    return feature._content.get(definitions.FEATURE_TAG_NAMESPACE)


def __check_string(value, path: list[str], pattern: dict, tag_path: str, logger: BaseLogger):
    syntax = pattern.get("syntax", None)
    if syntax is not None and not re.match(syntax, value):
        logger.error(f"Invalid syntax for key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}'.")


def __check_list(value, path: list[str], pattern: dict, tag_path: str, logger: BaseLogger):
    if not isinstance(value, list):
        logger.error(f"Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be a list.")
    elif "not_empty" in pattern.get("tags", []):
        if len(value) == 0:
            logger.error(f"Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should not be empty.")


def __check_object(value, path: list[str], pattern: dict, tag_path: str, logger: BaseLogger):
    if not isinstance(value, dict):
        logger.error(f"Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be an object.")
    else:
        for key, element in pattern.get("elements", {}).items():
            __check_key(tag_path, path + [key], element, value, logger)


def __check_bool(value, path: list[str], pattern: dict, tag_path: str, logger: BaseLogger):
    if not isinstance(value, bool):
        logger.error(f"Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be a boolean.")
    elif value != pattern.get("value", False):
        logger.error(f"Key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}' should be {pattern.get('value', False)}.")


def __check_key(tag_path: str, path: list[str], pattern: dict, obj: dict, logger: BaseLogger):
    type = pattern.get("type", None)
    value = obj.get(path[-1], None)
    if value is None and not pattern.get("optional", True):
        logger.error(f"Missing key '{".".join(path)}' in Bookshelf metadata of feature tag '{tag_path}'.")
    elif not pattern.get("optional", True):
        if type == "string":
            __check_string(value, path, pattern, tag_path, logger)
        elif type == "list":
            __check_list(value, path, pattern, tag_path, logger)
        elif type == "object":
            __check_object(value, path, pattern, tag_path, logger)
        elif type == "bool":
            __check_bool(value, path, pattern, tag_path, logger)
