from files_provider._types import Function
from files_provider.files_provider import Artifact
from function_call_getter._types import (VisitableFeature, VisitableFunction)
from logger import newLogger
from logger.logger import Logger
from typing import cast
import definitions
import re
import utils.function_header as function_header

def check(artifact_paths: list[Artifact]) -> bool:
    """
    return True if errors were found
    """

    logger = newLogger()
    logger.print_step('The following files will be reviewed:', '📄')
    logger.print_log(*[str(path.real_path.relative_to(definitions.ROOT_DIR)) for path in artifact_paths])

    logger.print_step("Checking the header of all the called function…", "⏳")

    for artifact in artifact_paths:
        if isinstance(artifact, Function):
            header_with_doc = re.escape(function_header.get("%REGEX%", True)).replace("\\\n", "\n").replace("%REGEX%", re.escape(definitions.DOC_URL) + r"([-a-zA-Z0-9@:%_\+.~#?&//=]*)")
            header_without_doc = function_header.get()

            content: list[str] = [line for line in artifact.get_content() if line != ""]

            splitted_header_without_doc = header_without_doc.splitlines()
            splitted_header_with_doc = header_with_doc.splitlines()
            current_header_if_doc = "\n".join([line.strip() for line in content[0:len(splitted_header_with_doc)]])
            current_header_if_no_doc = "\n".join([line.strip() for line in content[0:len(splitted_header_without_doc)]])

            if current_header_if_no_doc != header_without_doc and not re.match(header_with_doc, current_header_if_doc):
                logger.print_err(f"Invalid header in function '{artifact.mc_path}'.")

    return logger.print_done()


def callback(logger: Logger, function: VisitableFunction | VisitableFeature) -> bool:

    if isinstance(function, VisitableFeature):
        content = cast(VisitableFeature, function).content
        if definitions.FEATURE_TAG_NAMESPACE not in content:
            logger.print_err(f"No metadata in feature tag '{function.mc_path}'. End points analyze will be ignored.")

    else:
        header_with_doc = re.escape(function_header.get("%REGEX%", True)).replace("\\\n", "\n").replace("%REGEX%", re.escape(definitions.DOC_URL) + r"([-a-zA-Z0-9@:%_\+.~#?&//=]*)")
        header_without_doc = function_header.get()

        content: list[str] = [line for line in function.content if line != ""]

        splitted_header_without_doc = header_without_doc.splitlines()
        splitted_header_with_doc = header_with_doc.splitlines()
        current_header_if_doc = "\n".join([line.strip() for line in content[0:len(splitted_header_with_doc)]])
        current_header_if_no_doc = "\n".join([line.strip() for line in content[0:len(splitted_header_without_doc)]])

        if current_header_if_no_doc != header_without_doc and not re.match(header_with_doc, current_header_if_doc):
            logger.print_err(f"Invalid header in function '{function.mc_path}' (feature {function.feature.mc_path}).")
