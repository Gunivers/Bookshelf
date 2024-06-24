from files_provider._types import Function
from files_provider.files_provider import Artifact
from generators.utils import render_template
from logger import new_logger
import definitions
import re


def check(artifact_paths: list[Artifact]) -> bool:
    """
    return True if errors were found
    """
    logger = new_logger()
    logger.step("📄 The following files will be reviewed:")
    logger.print(*[str(path.real_path.relative_to(definitions.ROOT_DIR)) for path in artifact_paths])

    logger.step("⏳ Checking the header of all the called function…")

    header_with_doc = render_template("header.jinja", doc="%REGEX%", is_feature=True)
    header_with_doc = re.escape(header_with_doc).replace("%REGEX%", rf"{re.escape(definitions.DOCUMENTATION_URL)}([-a-zA-Z0-9@:%_\+.~#?&//=]*)")
    header_without_doc = render_template("header.jinja")
    splitted_header_with_doc = header_with_doc.splitlines()
    splitted_header_without_doc = header_without_doc.splitlines()

    for artifact in artifact_paths:
        if isinstance(artifact, Function):
            content: list[str] = artifact.get_content()

            current_header_with_doc = "\n".join(content[0:len(splitted_header_with_doc)])
            current_header_without_doc = "\n".join(content[0:len(splitted_header_without_doc)])

            if current_header_without_doc != header_without_doc and not re.match(header_with_doc, current_header_with_doc):
                logger.error(f"Invalid header in function '{artifact.mc_path}'.")

    return logger.done()
