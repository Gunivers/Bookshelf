import json
from core.definitions import MODULES_DIR
from datetime import datetime
from jinja2 import Template
from pathlib import Path
from typing import Any, Callable, Optional, TypeVar

T = TypeVar('T')


def prefix(value: str, prefix: str = 'minecraft:'):
    """
    Ensure a string starts with the specified prefix.
    """
    return value if value.startswith(prefix) else f'{prefix}{value}'


def render_template(template: Path, **kwargs) -> str:
    """
    Load and render a Jinja2 template from a file.
    """
    template = Template(template.read_text(encoding='utf-8'))
    return template.render(now=datetime.now, **kwargs)


def render_snbt(obj: Any) -> str:
    """
    Render a Python object to SNBT.
    """
    def quote_key(k: str) -> str:
        return f'"{k}"' if ':' in k else k

    if isinstance(obj, dict):
        return f'{{{",".join([f"{quote_key(str(k))}:{render_snbt(v)}" for k, v in obj.items() if v is not None])}}}'
    if isinstance(obj, list):
        return f'[{",".join([render_snbt(v) for v in obj])}]'
    if isinstance(obj, str):
        return f'"{obj}"'
    if isinstance(obj, bool):
        return '1b' if obj else '0b'
    return str(obj)


def extract_feature_id(file: Path) -> Optional[str]:
    """
    Derive the feature ID from the file path.
    """
    try:
        meta = json.loads(file.read_text('utf-8')).get('__bookshelf__', {})
        parts = file.relative_to(MODULES_DIR).parts

        if not meta.get('feature'):
            return None

        is_tag = parts[3] == 'tags'
        feature_path = '/'.join(parts[5 if is_tag else 4:]).replace('.json', '')
        return f"{'#' if is_tag else ''}{parts[2]}:{feature_path}"

    except (KeyError, IndexError, ValueError):
        return None


def generate_loot_table_tree(
    items: list[T],
    formatter: Callable[[T], dict],
    conditions: Callable[[list], list],
) -> dict:
    """
    Generate a tree loot table for the given items.
    """
    def subtree(items: list[T]) -> dict:
        if len(items) == 1:
            return formatter(items[0])

        mid = len(items) // 2
        left, right = items[:mid], items[mid:]

        left_tree = subtree(left)
        right_tree = subtree(right)
        left_tree['conditions'] = conditions(left)

        return {'type':'alternatives','children':[left_tree, right_tree]}

    return {'pools':[{'rolls':1,'entries':[subtree(items)]}]}
