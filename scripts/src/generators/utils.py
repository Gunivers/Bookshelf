
from datetime import datetime
from jinja2 import Environment, FileSystemLoader
from pathlib import Path
import json
import nbtlib
import os
import typing


def render_json(obj: typing.Any, encoder: type[json.JSONEncoder] = None) -> str:
    return json.dumps(obj, indent=2, cls=encoder, ensure_ascii=False)


def render_snbt(obj: typing.Any) -> str:
    def quote_key(k: str) -> str:
        return f'"{k}"' if ':' in k else k
    if isinstance(obj, dict):
        return f'{{{",".join([f"{quote_key(str(k))}:{render_snbt(v)}" for k, v in obj.items() if v is not None])}}}'
    if isinstance(obj, list):
        return f'[{",".join([render_snbt(v) for v in obj])}]'
    if isinstance(obj, str):
        return f'"{obj}"'
    if isinstance(obj, bool):
        return "1b" if obj else "0b"
    return str(obj)


def render_template(name: str, *args: typing.Any, **kwargs: typing.Any) -> str:
    env = Environment(loader=FileSystemLoader(Path(__file__).parent.parent.parent / "templates"))
    env.globals["now"] = datetime.now
    env.globals["render_snbt"] = render_snbt
    env.globals["render_json"] = render_json
    return env.get_template(name) \
        .render(*args, **kwargs) \
        .replace("\r\n", "\n") \
        .strip()


def write_file(content: str, path: Path) -> None:
    os.makedirs(path.parent, exist_ok=True)
    with open(path, 'w', newline='\n') as file:
        file.write(content if content.endswith('\n') else content + '\n')


def write_nbt(storage: str, content: str, path: Path) -> None:
    with nbtlib.load(path) as file:
        paths = storage.split(".")
        for path in paths[:-1]:
            file = file[path]
        file[paths[-1]] = nbtlib.parse_nbt(content)
