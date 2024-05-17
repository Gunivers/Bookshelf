from __future__ import annotations
from pathlib import Path
from typing import Optional
import definitions
from function_call_getter._types import *
from files_provider.files_provider import DataCategory
import os
import sys
import re

def to_relative_path(path: Path) -> Path:
    return path.relative_to(definitions.ROOT_DIR)
