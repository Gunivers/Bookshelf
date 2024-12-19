import json
from collections.abc import Callable, Iterable
from datetime import datetime
from functools import wraps
from itertools import takewhile
from pathlib import Path
from typing import TypeVar

from beet import Cache
from jinja2 import Template
from pydantic import BaseModel

from core.definitions import MODULES_DIR

T = TypeVar("T")

Fn = Callable[..., dict | list]
EFmt = Callable[[T], dict]
CFmt = Callable[[list[T]], list]


def cache_result(cache: Cache, key: str) -> Callable[[Fn], Fn]:
    """Cache the result of a function into a JSON file."""
    def decorator(func: Fn) -> Fn:
        @wraps(func)
        def wrapper(*args: list, **kwargs: dict) -> dict | list:
            cache_path = cache.get_path(key)
            if cache_path.is_file():
                return json.loads(cache_path.read_text("utf-8"))
            result = func(*args, **kwargs)
            with Path(cache_path).open("w") as file:
                json.dump(result, file, indent=None)
            return result
        return wrapper
    return decorator


def download_and_parse_json(cache: Cache, url: str) -> dict|list:
    """Get cached downloaded JSON data."""
    file = cache.download(url)
    return json.loads(file.read_text("utf-8"))


def extract_feature_id(file: Path) -> str | None:
    """Derive the feature ID from the file path."""
    try:
        meta = json.loads(file.read_text("utf-8")).get("__bookshelf__", {})
        parts = file.relative_to(MODULES_DIR).parts

        if not meta.get("feature"):
            return None

        is_tag = parts[3] == "tags"
        feature_path = "/".join(parts[5 if is_tag else 4:]).replace(".json", "")
        return f"{'#' if is_tag else ''}{parts[2]}:{feature_path}"

    except (KeyError, IndexError, ValueError):
        return None


def gen_loot_table_tree(items: list[T], entry: EFmt, conditions: CFmt) -> dict:
    """Generate a tree loot table for the given items."""
    def subtree(items: list[T]) -> dict:
        if len(items) == 1:
            return entry(items[0])

        mid = len(items) // 2
        left, right = items[:mid], items[mid:]

        left_tree = subtree(left)
        right_tree = subtree(right)
        left_tree["conditions"] = conditions(left)

        return {"type":"alternatives","children":[left_tree, right_tree]}

    return {"pools":[{"rolls":1,"entries":[subtree(items)]}]}


def matching_len(a: Iterable, b: Iterable) -> int:
    """Return the length of the longest matching prefix between two sequences."""
    return len(list(takewhile(
        lambda x: x[0] == x[1],
        zip(a, b, strict=False),
    )))


def render_snbt(obj: object) -> str:
    """Render a Python object to SNBT."""
    def quote_key(k: str) -> str:
        return f'"{k}"' if ":" in k else k
    if isinstance(obj, BaseModel):
        return render_snbt(obj.model_dump())
    if isinstance(obj, dict):
        items = ",".join(
            f"{quote_key(str(k))}:{render_snbt(v)}"
            for k, v in obj.items()
            if v is not None
        )
        return f"{{{items}}}"
    if isinstance(obj, list):
        values = ",".join([render_snbt(v) for v in obj])
        return f"[{values}]"
    if isinstance(obj, str):
        return f'"{obj}"'
    if isinstance(obj, bool):
        return "1b" if obj else "0b"
    return str(obj)


def render_template(file: Path, **kwargs: dict[str, object]) -> str:
    """Load and render a Jinja2 template from a file."""
    template = Template(file.read_text(encoding="utf-8"))
    return template.render(now=datetime.now, **kwargs)


def with_prefix(value: str, prefix: str = "minecraft:") -> str:
    """Ensure a string starts with the specified prefix."""
    return value if value.startswith(prefix) else f"{prefix}{value}"
