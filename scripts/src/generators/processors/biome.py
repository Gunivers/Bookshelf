from datetime import datetime
import math
from collections import defaultdict
import os
from pathlib import Path
from generators.contracts import DataProcessor
from jinja2 import Environment, FileSystemLoader
import definitions


class CreateTagsFiles(DataProcessor):
    def process(self, data):
        print("\033[90m⚙️ Generating tags files\033[0m")

        file = self.target / "has_precipitation.json"
        values = [biome["type"] for biome in data if biome["has_precipitation"]]
        self.write_json(file, { "values": values })

        for i in range(math.floor(math.log2(len(data))) + 1):
            file = self.target / f"type/group_{2**i}.json"
            values = [biome["type"] for biome in data if (biome["id"] >> i) & 1]
            self.write_json(file, { "values": values })


class CreatePredicatesFiles(DataProcessor):
    def process(self, data):
        print("\033[90m⚙️ Generating predicates files\033[0m")

        groups = defaultdict(list)
        for biome in [biome for biome in data if biome["temperature"] < 0.4]:
            y = int((biome["temperature"] - 0.15) / 0.00125 + 80)
            groups[y if y > 0 else -2147483648].append(biome['type'])

        self.write_json(self.target / "can_snow.json", self.format(dict(sorted(groups.items()))))

    def format(self, groups: dict[list]) -> dict:
        return {
            "condition":"minecraft:any_of",
            "terms": [{
                "condition": "minecraft:location_check",
                "predicate": {
                    "position": { "y": { "min": y } },
                    "biomes": biomes
                }
            } for y, biomes in groups.items()]
        }


class CreateTypesFile(DataProcessor):
    def process(self, data):
        print("\033[90m⚙️ Generating types table function\033[0m")

        env = Environment(loader=FileSystemLoader(os.path.join(Path(definitions.ROOT_DIR) / "scripts" / "src" / "check_function_headers" / "templates")))
        template = env.get_template("header.jinja")
        header = template.render(year=datetime.now().year, doc=None, is_feature=False).replace("\r\n", "\n").strip()

        self.write_text(self.target, [
            header,
            "",
            "# This file was automatically generated, do not edit it",
            (f"data modify storage bs:const biome set value "
             f"{self.render(self.format(data))}")
        ])

    def format(self, data) -> list:
        return [{
            key: value
            for key, value in biome.items()
            if key != 'id'
        } for biome in data]


class UpdateStorageFile(DataProcessor):
    def process(self, data):
        print("\033[90m⚙️ Updating storage file asset\033[0m")

        self.write_nbt(
            self.target,
            self.render(self.format(data)),
            ".data.contents.const.biome",
        )

    def format(self, data) -> list:
        return [{
            key: value
            for key, value in biome.items()
            if key != 'id'
        } for biome in data]
