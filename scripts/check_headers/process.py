from dataclasses import dataclass
from datetime import datetime
from functools import partial
import os
import re
import sys
sys.path.append(os.path.join(os.path.dirname(os.path.dirname(__file__)), "function_call_getter"))
from function_call_getter import FunctionCallGetter
from _types import (FeatureSet, Function, Visitor)
import definitions

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

def process(workspace: str, filepaths: list[str]) -> bool:
    """
    return True if errors were found
    """

    print('📄 The following files will be reviewed:')
    print("\n".join([ "  " + filepath for filepath in filepaths]))

    getter = FunctionCallGetter()

    feature_set: FeatureSet = getter.build_function_call_tree(workspace, filepaths)
    print(f"📦 Found {len(feature_set.features)} features:")
    for feature in feature_set.features:
        print(f"  {feature.path}")

    print("⏳ Checking their header…")



    # Store feature_name → dependency modules
    errors: list[str] = []

    visitor = Visitor([Function], partial(callback, errors))
    visitor.visit(feature_set)

    for error in errors:
        print(error)

    return len(errors) > 0

def callback(errors: list[str], function: Function) -> bool:
    content: list[str] = function.content


    if not content[0].startswith(header_header):
        errors.append(f"❌ Missing header in feature root '{function.path}' (feature {function.feature.path})")
        return True

    header_footer_index = next(filter(lambda tuple: tuple[1].startswith(header_footer), enumerate(content)), (None, None))[0]

    if not header_footer_index:
        errors.append(f"❌ Invalid header in feature root  '{function.path}' (feature {function.feature.path}): missing end of the header")
        return True

    searched_lines = list(lines.keys())

    for line in content[1:header_footer_index]:
        line = line[1:].strip()
        for searched_line in searched_lines:
            if re.match(lines[searched_line]["syntax"], line):
                searched_lines.remove(searched_line)
                break

    for searched_line in searched_lines:
        errors.append(f"❌ Missing or invalid line '{searched_line}' in feature root '{function.path}' (feature {function.feature.path})")

    return True
