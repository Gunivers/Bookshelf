import math
import nbtlib

from abc import ABC, abstractmethod
from dataclasses import dataclass
from pathlib import Path
from .data_provider import DataProvider

@dataclass
class DataProcessor(ABC):
    data: DataProvider

    @abstractmethod
    def process(self, to: Path):
        pass

    def render(self, value) -> str:
        if isinstance(value, dict):
            return f'{{{",".join([f"{key}:{self.render(val)}" for key, val in value.items()])}}}'
        if isinstance(value, list):
            return f'[{",".join([self.render(val) for val in value])}]'
        return f'"{value}"' if isinstance(value, str) else str(value)

    def write_lines(
        self,
        file: Path,
        contents: list[str],
        insert_final_newline: bool = True
    ) -> int:
        eof = "\n" if insert_final_newline else ""
        return file.write_text("\n".join(contents) + eof, newline="\n")


class CreateTypesFile(DataProcessor):
    def process(self, to: Path):
        print("⚙️ Generating types_table.mcfunction")

        self.write_lines(to, [
            "# This file was automatically generated, do not edit it",
            (f"data modify storage bs:const block set value "
             f"{self.render(self.format(self.data.blocks))}")
        ])

        print("✅ Done!")

    def format(self, blocks: list) -> list:
        return [{
            "id": block["id"],
            "group": block["group"],
            "type": block["type"],
            "item": self.data.ITEMS_DICT.get(block["type"], block["type"]),
        } for block in blocks]


class CreateStatesFile(DataProcessor):
    def process(self, to: Path):
        print("⚙️ Generating states_table.mcfunction")

        self.write_lines(to, [
            "# This file was automatically generated, do not edit it",
            *[
                (f"data modify storage bs:const "
                 f"block[{{group:{str(group + 1)}}}].iterable_properties set value "
                 f"{self.render(self.format(states))}")
                for group, states in enumerate(self.data.groups[1:])
            ]
        ])

        print("✅ Done!")

    def format(self, states: dict) -> list:
        return [{
            "name": name,
            "options": [{
                "index": index,
                "value": value,
                "state": f"{name}={value},",
                "property": {name: value},
            } for index, value in enumerate(options)],
        } for name, options in states.items()]


class CreateRegistryFiles(DataProcessor):
    def process(self, to: Path):
        print("⚙️ Generating registry functions")

        for group, states in enumerate(self.data.groups[1:]):
            self.write_lines(to / f"{group + 1}.mcfunction", [
                "# This file was automatically generated, do not edit it",
                *[
                    (f'execute if block ~ ~ ~ #bs.block:has_state[{name}={value}] run '
                     f'data modify storage bs:out block.iterable_properties'
                     f'[{{name:"{name}"}}].options[{{value:"{value}"}}].selected set value 1b')
                    for name, options in states.items() for value in options
                ]
            ])

        print("✅ Done!")


class CreateTagsFiles(DataProcessor):
    def process(self, to: Path):
        print("⚙️ Generating block tags")

        for i in range(math.floor(math.log2(len(self.data.blocks))) + 1):
            values = [block["type"] for block in self.data.blocks if (block["id"] >> i) & 1]
            filepath = to / f"type/group_{2**i}.json"
            self.write_lines(filepath, [f'{{"values":{self.render(values)}}}'], False)

        values = [block["type"] for block in self.data.blocks if block["group"] > 0]
        filepath = to / "has_state.json"
        self.write_lines(filepath, [f'{{"values":{self.render(values)}}}'], False)

        print("✅ Done!")


class UpdateStorageFile(DataProcessor):
    def process(self, to: Path):
        print("⚙️ Updating storage file asset")

        with nbtlib.load(to) as storage:
            nbt = nbtlib.parse_nbt(self.render(self.format(self.data.blocks)))
            storage['']['data']['contents']['const']['block'] = nbt

        print("✅ Done!")

    def format(self, blocks: list) -> list:
        return [{
            "id": block["id"],
            "group": block["group"],
            "type": block["type"],
            "item": DataProvider.ITEMS_DICT.get(block["type"], block["type"]),
            "iterable_properties": self.format_states(self.data.groups[block["group"]])
        } for block in blocks]

    def format_states(self, states: dict) -> list:
        return [{
            "name": name,
            "options": [{
                "index": index,
                "value": value,
                "state": f"{name}={value},",
                "property": {name: value},
            } for index, value in enumerate(options)],
        }for name, options in states.items()]
