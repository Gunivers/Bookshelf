from __future__ import annotations
from pathlib import Path
from typing import Optional
import definitions
from function_call_getter._types import *
from files_provider.files_provider import DataCategory
import os
import sys
import re

def resolve_function_path(path: str, resource_locator: ResourceLocator) -> Optional[Path]:
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

def resolve_real_path(path: Path) -> Optional[str]:
    groups = re.findall(regex_get_mc_path, path.as_posix())
    if len(groups[0]) == 2:
        return groups[0][0] + ":" + groups[0][1]

def to_relative_path(path: Path) -> Path:
    return path.relative_to(definitions.ROOT_DIR)
