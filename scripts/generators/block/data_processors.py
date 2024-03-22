import math
import nbtlib

from abc import ABC, abstractmethod
from dataclasses import dataclass
from pathlib import Path
from .data_provider import DataProvider


class DataProcessor(ABC):
    @abstractmethod
    def process(self, data: DataProvider):
        pass

    def render(self, value) -> str:
        if isinstance(value, dict):
            return f'{{{",".join([f"{key}:{self.render(val)}" for key, val in value.items()])}}}'
        if isinstance(value, list):
            return f'[{",".join([self.render(val) for val in value])}]'
        if isinstance(value, str):
            return f'"{value}"'
        return str(value)


@dataclass
class CreateTypesFile(DataProcessor):
    file: Path
    def process(self, data: DataProvider):
        print("⚙️ Generating types_table.mcfunction")
        self.file.write_text("\n".join(["# This file was automatically generated, do not edit it", " ".join([
            "data modify storage bs:const block set value",
            self.render([{
                "id": block["id"],
                "group": block["group"],
                "type": block["type"],
                "item": data.ITEMS_DICT.get(block["type"], block["type"]),
            } for block in data.blocks])
        ]), ""]), newline="\n")
        print("✅ Done!")


@dataclass
class CreateStatesFile(DataProcessor):
    file: Path
    def process(self, data: DataProvider):
        print("⚙️ Generating states_table.mcfunction")
        self.file.write_text("\n".join(["# This file was automatically generated, do not edit it"] + [
            " ".join([
                f"data modify storage bs:const block[{{group:{str(group + 1)}}}].iterable_properties set value",
                self.render([{
                    "name": name,
                    "options": [{
                        "index": index,
                        "value": value,
                        "state": f"{name}={value},",
                        "property": {name: value},
                    } for index, value in enumerate(options)],
                } for name, options in states.items()])
            ]) for group, states in enumerate(data.groups[1:])
        ] + [""]), newline="\n")
        print("✅ Done!")


@dataclass
class CreateRegistryFiles(DataProcessor):
    dir: Path
    def process(self, data: DataProvider):
        print("⚙️ Generating registry functions")
        for group, states in enumerate(data.groups[1:]):
            self.dir.joinpath(f"{group + 1}.mcfunction").write_text("\n".join([
                "# This file was automatically generated, do not edit it"
            ] + [
                " ".join([
                    f'execute if block ~ ~ ~ #bs.block:has_state[{name}={value}] run',
                    f'data modify storage bs:out block.iterable_properties[{{name:"{name}"}}].options[{{value:"{value}"}}].selected set value 1b',
                ])
                for name, options in states.items() for value in options
            ] + [""]), newline="\n")
        print("✅ Done!")


@dataclass
class CreateTagsFiles(DataProcessor):
    dir: Path
    def process(self, data: DataProvider):
        print("⚙️ Generating block tags")
        for i in range(math.floor(math.log2(len(data.blocks))) + 1):
            self.dir.joinpath(f"type/group_{2**i}.json").write_text(
                f'{{"values":{self.render([block["type"] for block in data.blocks if (block["id"] >> i) & 1])}}}',
                newline="\n"
            )
        self.dir.joinpath("has_state.json").write_text(
            f'{{"values":{self.render([block["type"] for block in data.blocks if block["group"] > 0])}}}',
            newline="\n"
        )
        print("✅ Done!")


@dataclass
class UpdateStorageFile(DataProcessor):
    file: Path
    def process(self, data: DataProvider):
        print("⚙️ Updating storage file asset")
        with nbtlib.load(self.file) as storage:
            storage['']['data']['contents']['const']['block'] = nbtlib.parse_nbt(self.render([{
                "id": block["id"],
                "group": block["group"],
                "type": block["type"],
                "item": data.ITEMS_DICT.get(block["type"], block["type"]),
                "iterable_properties": [{
                    "name": name,
                    "options": [{
                        "index": index,
                        "value": value,
                        "state": f"{name}={value},",
                        "property": {name: value},
                    } for index, value in enumerate(options)],
                } for name, options in data.groups[block["group"]].items()]
            } for block in data.blocks]))
        print("✅ Done!")
