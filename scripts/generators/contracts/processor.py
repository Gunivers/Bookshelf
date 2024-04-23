import json
import nbtlib

from abc import ABC, abstractmethod
from pathlib import Path

class DataProcessor(ABC):
    def __init__(self, target: Path):
        self.target = target

    @abstractmethod
    def process(self, data):
        """
        Generates files using the given data.
        """
        pass

    def render(self, value) -> str:
        """
        Renders a structure to snbt.
        """
        if isinstance(value, dict):
            return f'{{{",".join([f"{key}:{self.render(val)}" for key, val in value.items()])}}}'
        if isinstance(value, list):
            return f'[{",".join([self.render(val) for val in value])}]'
        if isinstance(value, str):
            return f'"{value}"'
        if isinstance(value, bool):
            return "1b" if value else "0b"
        return str(value)

    def write_json(self, file: Path, contents: dict):
        """
        Writes formatted json to a file.
        """
        self.write_text(file, [json.dumps(contents, indent=2)])

    def write_nbt(self, file: Path, contents: str, storage_path: str):
        """
        Writes snbt to a .dat file.
        """
        with nbtlib.load(file) as storage:
            paths = storage_path.split(".")
            for path in paths[:-1]:
                storage = storage[path]
            storage[paths[-1]] = nbtlib.parse_nbt(contents)

    def write_text(self, file: Path, contents: list[str], insert_eof: bool = True):
        """
        Writes multiple lines to a file.
        """
        eof = "\n" if insert_eof else ""
        file.write_text("\n".join(contents) + eof, newline="\n")
