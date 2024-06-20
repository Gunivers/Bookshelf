from functools import partial
from generators.utils import render_json, render_snbt, render_template, write_file, write_nbt
from logger import BaseLogger, new_logger
from mcdata.block import get_blocks
from pathlib import Path
from typing import Callable
import definitions
import math


def generate(mc_version: str, logger: BaseLogger = new_logger()):
    logger.step("🚀 Fetching 'bs.block' data…")
    blocks = get_blocks(mc_version)

    logger.step("⚙️ Generating 'bs.block' files…")
    generate_blocks_storage(blocks, partial(write_nbt, ".data.contents.const.block"))
    logger.success("Storage 'command_storage_bs.dat' updated!")
    generate_blocks_table_function(blocks, write_file)
    logger.success("Function 'blocks_table.mcfunction' generated!")
    generate_types_hashmap_function(blocks, write_file)
    logger.success("Function 'types_hashmap.mcfunction' generated!")
    generate_items_hashmap_function(blocks, write_file)
    logger.success("Function 'items_hashmap.mcfunction' generated!")
    generate_block_states_function(blocks, write_file)
    logger.success("Function 'block_states.mcfunction' generated!")
    generate_registry_functions(blocks, write_file)
    logger.success("Registry functions generated!")
    generate_block_tags(blocks , write_file)
    logger.success("Block tags generated!")

    logger.done()


def generate_blocks_storage(blocks: list[dict], consumer: Callable[[str, Path], None]):
    file_path = definitions.GENERATED_PATH / "command_storage_bs.dat"
    consumer(render_snbt({
        "table": blocks,
        "types": {block["type"]: idx for idx, block in enumerate(blocks)},
        "items": {block["item"]: idx for idx, block in enumerate(blocks) if block["item"] is not None},
    }), file_path)


def generate_blocks_table_function(blocks: list[dict], consumer: Callable[[str, Path], None]):
    file_path = definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/function/load/blocks_table.mcfunction"
    blocks = [{k: v for k, v in block.items() if k != "_"} for block in blocks]
    consumer(render_template("block/blocks_table.jinja", blocks=blocks), file_path)


def generate_types_hashmap_function(blocks: list[dict], consumer: Callable[[str, Path], None]):
    file_path = definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/function/load/types_hashmap.mcfunction"
    types = {block["type"]: idx for idx, block in enumerate(blocks)}
    consumer(render_template("block/types_hashmap.jinja", types=types), file_path)


def generate_items_hashmap_function(blocks: list[dict], consumer: Callable[[str, Path], None]):
    file_path = definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/function/load/items_hashmap.mcfunction"
    items = {block["item"]: idx for idx, block in enumerate(blocks) if block["item"] is not None}
    consumer(render_template("block/items_hashmap.jinja", items=items), file_path)


def generate_block_states_function(blocks: list[dict], consumer: Callable[[str, Path], None]):
    file_path = definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/function/load/block_states.mcfunction"
    groups = {block["group"]: block["_"] for block in blocks if block["group"] > 0}
    consumer(render_template("block/block_states.jinja", groups=groups), file_path)


def generate_registry_functions(blocks: list[dict], consumer: Callable[[str, Path], None]):
    dir_path = definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/function/get/registry"
    groups = {block["group"]: block["_"] for block in blocks if block["group"] > 0}

    for group, states in groups.items():
        file_path = dir_path / f"{group}.mcfunction"
        consumer(render_template("block/states_registry.jinja", states=states), file_path)


def generate_block_tags(blocks: list[dict], consumer: Callable[[str, Path], None]):
    dir_path = definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/tags/block"
    file_path = dir_path / "has_state.json"
    consumer(render_json({ "values": [block["type"] for block in blocks if block["group"] > 0] }), file_path)

    for b in range(math.floor(math.log2(len(blocks))) + 1):
        file_path = dir_path / f"type/group_{2**b}.json"
        consumer(render_json({ "values": [biome["type"] for i, biome in enumerate(blocks, 1) if (i >> b) & 1] }), file_path)
