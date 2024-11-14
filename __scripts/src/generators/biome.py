from collections import defaultdict
from functools import partial
from generators.utils import render_json, render_snbt, render_template, write_file, write_nbt
from logger import BaseLogger, new_logger
from mcdata.biome import get_biomes
from pathlib import Path
from typing import Callable
import definitions
import math


def generate(mc_version: str, logger: BaseLogger = new_logger()):
    logger.step("🚀 Fetching 'bs.biome' data…")
    biomes = get_biomes(mc_version)

    logger.step("⚙️ Generating 'bs.biome' files…")
    generate_biomes_storage(biomes, partial(write_nbt, ".data.contents.const.biome"))
    logger.success("Storage 'command_storage_bs.dat' updated!")
    generate_biomes_table_function(biomes, write_file)
    logger.success("Function 'biomes_table.mcfunction' generated!")
    generate_can_snow_predicate(biomes, write_file)
    logger.success("Predicate 'can_snow.json' generated!")
    generate_biome_tags(biomes, write_file)
    logger.success("Biome tags generated!")

    logger.done()


def generate_biomes_storage(biomes: list[dict], consumer: Callable[[str, Path], None]):
    file_path = definitions.GENERATED_PATH / "command_storage_bs.dat"
    consumer(render_snbt(biomes), file_path)


def generate_biomes_table_function(biomes: list[dict], consumer: Callable[[str, Path], None]):
    file_path = definitions.DATAPACKS_PATH / "Bookshelf/data/bs.biome/function/load/biomes_table.mcfunction"
    consumer(render_template("biome/biomes_table.jinja", biomes=biomes), file_path)


def generate_biome_tags(biomes: list[dict], consumer: Callable[[str, Path], None]):
    dir_path = definitions.DATAPACKS_PATH / "Bookshelf/data/bs.biome/tags/worldgen/biome"
    file_path = dir_path / "has_precipitation.json"
    consumer(render_json({ "values": [biome["type"] for biome in biomes if biome["has_precipitation"]] }), file_path)

    for b in range(math.floor(math.log2(len(biomes))) + 1):
        file_path = dir_path / f"type/group_{2**b}.json"
        consumer(render_json({ "values": [biome["type"] for i, biome in enumerate(biomes, 1) if (i >> b) & 1] }), file_path)


def generate_can_snow_predicate(biomes: list[dict], consumer: Callable[[str, Path], None]):
    file_path = definitions.DATAPACKS_PATH / "Bookshelf/data/bs.biome/predicate/can_snow.json"
    groups = defaultdict(list)
    for biome in [biome for biome in biomes if biome["temperature"] < 0.4]:
        y = int((biome["temperature"] - 0.15) / 0.00125 + 80)
        groups[y if y > 0 else -2147483648].append(biome['type'])

    consumer(render_json({
        "condition":"minecraft:any_of",
        "terms": [{
            "condition": "minecraft:location_check",
            "predicate": {
                "position": { "y": { "min": y } },
                "biomes": biomes
            }
        } for y, biomes in dict(sorted(groups.items())).items()]
    }), file_path)
