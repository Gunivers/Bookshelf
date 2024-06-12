

import os
from pathlib import Path
import sys
from typing import Optional
import definitions
from files_provider.files_provider import DataCategory


def get_module_path(namespace: str, path: Path) -> Path:
    """return the path of the module containing the file"""
    return Path(path.as_posix().split(namespace)[0] + namespace)


def parse_real_path(path: Path) -> tuple[str, 'DataCategory']:
    """return Minecraft path and the data category (function, function tag, …)"""
    # Get path relative to root of the repository
    relative_path = path.relative_to(definitions.ROOT_DIR)
    # Split path such as fourth element is the namespace and fifth is the remaining path
    splitted_path = str(relative_path).split(os.path.sep, 4)
    namespace = splitted_path[3]
    relative_path = splitted_path[4]
    for category in DataCategory:
        if relative_path.startswith(category.value.path_fragment):
            fragment_path = relative_path.removeprefix(category.value.path_fragment + os.path.sep).removesuffix(category.value.extension)
            return namespace.removeprefix(category.value.mc_path_prefix) + ':' + fragment_path, category


def resolve_function_path(path: str) -> Optional[Path]:
    if path.startswith("#"):
        path = path.removeprefix("#")
        category = DataCategory.FUN_TAG
    else:
        category = DataCategory.FUNCTION
    partial_path = path.replace(":", os.path.sep + category.value.path_fragment + os.path.sep)
    for lib in definitions.BOOKSHELF_LIBS:
        path = os.path.join(definitions.DATAPACKS_PATH, lib, "data", partial_path + category.value.extension)
        if os.path.exists(path):
            return Path(path)
    print(f"❌ function '{os.path.abspath(path)}' cannot be resolved", file=sys.stderr)
    raise
