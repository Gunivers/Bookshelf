from datetime import datetime
from functools import partial
import os
from pathlib import Path
from typing import cast
from files_provider.files_provider import Artifact
from function_call_getter.function_call_getter import FunctionCallGetter
from function_call_getter._types import (VisitableFeatureSet, VisitableFeature, VisitableFunction, Visitor)
import definitions
from jinja2 import Environment, FileSystemLoader
from logger import newLogger
from logger.logger import Logger
import utils.function_header as function_header

header_header = "# INFO"
header_footer = "# CODE"

def check(artifact_paths: list[Artifact]) -> bool:
    """
    return True if errors were found
    """

    logger = newLogger()
    logger.print_step('The following files will be reviewed:', '📄')
    logger.print_log(*[str(path.real_path.relative_to(definitions.ROOT_DIR)) for path in artifact_paths])

    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(artifact_paths)
    logger.print_step(f"Found {len(feature_set.features)} features:", "📦")
    logger.print_log(*[feature.mc_path for feature in feature_set.features])

    logger.print_step("Checking the header of all the called function…", "⏳")

    visitor = Visitor([VisitableFunction, VisitableFeature], partial(callback, logger))
    visitor.visit(feature_set)

    return logger.print_done()

documentation = None
is_feature = False

def callback(logger: Logger, function: VisitableFunction | VisitableFeature) -> bool:
    global documentation
    global is_feature

    if isinstance(function, VisitableFeature):
        content = cast(VisitableFeature, function).content
        if not definitions.FEATURE_TAG_NAMESPACE in content:
            logger.print_err(f"No metadata in feature tag '{function.mc_path}'. End points analyze will be ignored.")
        elif not "documentation" in content[definitions.FEATURE_TAG_NAMESPACE]:
            logger.print_err(f"No 'documentation' key in feature tag '{function.mc_path}' metadata. End points analyze will be ignored.")
        else:
            documentation = content[definitions.FEATURE_TAG_NAMESPACE].get("documentation", None)
        is_feature = True

    else:
        if not is_feature or documentation:
            header = function_header.get(documentation, is_feature)

            content: list[str] = [line for line in function.content if line != ""]

            splitted_header = header.splitlines()
            current_header = "\n".join(content[0:len(splitted_header)]).strip()

            if current_header != header:
                logger.print_err(f"Invalid header in function '{function.mc_path}' (feature {function.feature.mc_path}).")
            is_feature = False
