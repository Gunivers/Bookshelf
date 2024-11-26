import json
from datetime import datetime
from jinja2 import Template
from pathlib import Path
from typing import Callable, Optional, TypeVar


ROOT_DIR = Path(__file__).resolve().parents[2]
MODULES_DIR = ROOT_DIR / 'modules'

T = TypeVar('T')


def common_len(a, b):
    """
    Count the leadding length between two sequences.
    """
    i = 0
    while i < len(a) and i < len(b) and a[i] == b[i]:
        i += 1
    return i


def extract_feature_id(file_path: Path) -> Optional[str]:
    """
    Derives the feature ID from the file path.
    """
    try:
        meta = load_json(file_path).get('__bookshelf__', {})
        parts = file_path.relative_to(MODULES_DIR).parts

        if not meta['feature']:
            return None
        elif parts[3] == 'tags':
            feature = '/'.join(parts[5:]).replace('.json', '')
            return f'#{parts[2]}:{feature}'
        else:
            feature = '/'.join(parts[4:]).replace('.json', '')
            return f'{parts[2]}:{feature}'

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
        left_partition = items[:mid]
        right_partition = items[mid:]

        left_tree = subtree(left_partition)
        right_tree = subtree(right_partition)
        left_tree['conditions'] = conditions(left_partition)

        return {"type": "alternatives", "children": [left_tree, right_tree]}

    return {"pools":[{"rolls":1,"entries":[subtree(items)]}]}


def load_json(file_path: Path) -> dict|list:
    """
    Loads data from a JSON file.
    """
    return json.loads((ROOT_DIR / file_path).read_text(encoding='utf-8'))


def render_template(template_path: Path, **kwargs) -> str:
    """
    Loads a Jinja2 template from a file.
    """
    template = Template(template_path.read_text(encoding='utf-8'))
    return template.render(now=datetime.now, **kwargs)


def set_prefix(value: str, prefix: str = 'minecraft:'):
    """
    Ensure a string starts with the specified prefix.
    """
    return value if value.startswith(prefix) else f"{prefix}{value}"


def write_json(file_path: Path, data: dict|list):
    """
    Write data to a JSON file.
    """
    with open(ROOT_DIR / file_path, 'w') as file:
        json.dump(data, file, indent=2)
