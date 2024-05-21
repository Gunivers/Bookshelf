from datetime import datetime
from functools import partial
import json
import os
from pathlib import Path
import re
from typing import cast
from colored import Fore, Style
from files_provider.files_provider import Artifact
from function_call_getter.function_call_getter import FunctionCallGetter
from function_call_getter._types import (VisitableFeatureSet, VisitableFeature, VisitableFunction, Visitor)
import definitions
from jinja2 import Environment, FileSystemLoader

header_header = "# INFO"
header_footer = "# CODE"

lines = {
     "copyright": {
          "syntax": r"^Copyright © " + re.escape(str(datetime.now().year)) + r" Gunivers Community\.$"
        },
     "authors": {
            "syntax": r"^Authors:.*$"
     },
     "documentation": {
            "syntax": r"^Documentation:\s*" + re.escape(definitions.DOC_URL) + r".*$"
         },
     }

def process(artifact_paths: list[Artifact]) -> bool:
    """
    return True if errors were found
    """

    print(f'📄 The following files will be reviewed:{Fore.dark_gray}')
    print("\n".join([ "    " + str(path.real_path.relative_to(definitions.ROOT_DIR)) for path in artifact_paths]) + Style.reset)

    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(artifact_paths)
    print(f"📦 Found {len(feature_set.features)} features:{Fore.dark_gray}")
    print("\n".join([ "    " + feature.mc_path for feature in feature_set.features]) + Style.reset)

    print("⏳ Checking their header…")

    errors: list[str] = []

    visitor = Visitor([VisitableFunction, VisitableFeature], partial(callback, errors))
    visitor.visit(feature_set)

    for error in errors:
        print(error)

    return len(errors) > 0

documentation = None
is_feature = False

def callback(errors: list[str], function: VisitableFunction | VisitableFeature) -> bool:
    global documentation
    global is_feature

    if isinstance(function, VisitableFeature):
        content = cast(VisitableFeature, function).content
        if not definitions.FEATURE_TAG_NAMESPACE in content:
            errors.append(f"{Fore.red}❌ No metadata in feature tag '{function.mc_path}'. End points analyze will be ignored.{Style.reset}")
        elif not "documentation" in content[definitions.FEATURE_TAG_NAMESPACE]:
            errors.append(f"{Fore.red}❌ No 'documentation' key in feature tag '{function.mc_path}' metadata. End points analyze will be ignored.{Style.reset}")
        else:
            documentation = content[definitions.FEATURE_TAG_NAMESPACE].get("documentation", None)
        is_feature = True

    else:
        if not is_feature or documentation:
            env = Environment(loader=FileSystemLoader(os.path.join(Path(__file__).parent / "templates")))
            template = env.get_template("header.jinja")
            header = template.render(year=datetime.now().year, doc=documentation, is_feature=is_feature).replace("\r\n", "\n").strip()

            content: list[str] = [line for line in function.content if line != ""]

            splitted_header = header.splitlines()
            current_header = "\n".join(content[0:len(splitted_header)]).strip()

            if current_header != header:
                errors.append(f"{Fore.red}❌ Invalid header in function '{function.mc_path}' (feature {function.feature.mc_path}).{Style.reset}")

            is_feature = False
