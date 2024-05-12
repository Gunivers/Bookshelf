from __future__ import annotations
from typing import Optional
import definitions
import _types
import os
import sys
import re

def resolve_function_path(path: str, resource_locator: _types.ResourceLocator) -> Optional[str]:
    partial_path = path.replace(":", resource_locator.path)
    for lib in definitions.BOOKSHELF_LIBS:
        path = os.path.join(definitions.DATAPACKS_PATH, lib, "data", partial_path + resource_locator.extension)
        if os.path.exists(path):
            return path
        global error
    error = True
    print(f"❌ function '{os.path.abspath(path)}' cannot be resolved", file=sys.stderr)
    raise

regex_get_mc_path = r".*?datapacks\/.*?\/data\/(.*?)\/tags\/functions\/(.*?).json"

def resolve_real_path(path: str) -> Optional[str]:
    path = path.replace("\\", "/")
    groups = re.findall(regex_get_mc_path, path)
    if len(groups[0]) == 2:
        return groups[0][0] + ":" + groups[0][1]

