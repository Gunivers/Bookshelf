from functools import partial
from generators.utils import render_json,render_snbt,render_template,write_file,write_nbt
from logger import BaseLogger, new_logger
from mcdata.block import get_blocks
from pathlib import Path
from typing import Callable
import definitions


def generate(mc_version: str, logger: BaseLogger = new_logger()):
    logger.step("🚀 Fetching 'bs.block' data…")
    blocks = get_blocks(mc_version)

    logger.step("⚙️ Generating 'bs.block' files…")
    generate_blocks_storage(blocks, partial(write_nbt, ".data.contents.const.block"))
    logger.success("Storage 'command_storage_bs.dat' updated!")
    generate_types_table_function(blocks, write_file)
    logger.success("Function 'types_table.mcfunction' generated!")
    generate_items_table_function(blocks, write_file)
    logger.success("Function 'items_table.mcfunction' generated!")
    generate_groups_table_function(blocks, write_file)
    logger.success("Function 'groups_table.mcfunction' generated!")
    generate_has_state_block_tag(blocks, write_file)
    logger.success("Block tag 'has_state.json' generated!")
    generate_loot_tables(blocks, write_file)
    logger.success("Loot tables generated!")

    logger.done()


def generate_blocks_storage(blocks: list[dict], consumer: Callable[[str, Path], None]):
    consumer(render_snbt({
        "types": format_types_table(blocks),
        "items": format_items_table(blocks),
        "groups": format_groups_table(blocks),
    }), definitions.GENERATED_PATH / "command_storage_bs.dat")


def generate_types_table_function(blocks: list[dict], consumer: Callable[[str, Path], None]):
    consumer(render_template(
        "block/types_table.jinja",
        types=format_types_table(blocks)
    ), definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/function/load/types_table.mcfunction")


def generate_items_table_function(blocks: list[dict], consumer: Callable[[str, Path], None]):
    consumer(render_template(
        "block/items_table.jinja",
        items=format_items_table(blocks)
    ), definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/function/load/items_table.mcfunction")


def generate_groups_table_function(blocks: list[dict], consumer: Callable[[str, Path], None]):
    consumer(render_template(
        "block/groups_table.jinja",
        groups=format_groups_table(blocks)
    ), definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/function/load/groups_table.mcfunction")


def generate_has_state_block_tag(blocks: list[dict], consumer: Callable[[str, Path], None]):
    consumer(render_json(
        {"values": [block["type"] for block in blocks if block["group"] > 0]}
    ), definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/tags/block/has_state.json")


def generate_loot_tables(blocks: list[dict], consumer: Callable[[str, Path], None]):
    consumer(render_json(
        format_types_loot_table(blocks),
        indent=None,
    ), definitions.DATAPACKS_PATH / "Bookshelf/data/bs.block/loot_table/get/get.json")

    for state in {item["id"]: item for entry in blocks for item in entry["states"]}.values():
        consumer(render_json(
            format_state_loot_table(state),
            indent=None,
        ), definitions.DATAPACKS_PATH / f"Bookshelf/data/bs.block/loot_table/get/{state['id']}.json")


def format_types_table(blocks: list[dict]):
    return {block['type']: {
        k: v for k, v in block.items() if k != "states"
    } for block in blocks}


def format_items_table(blocks: list[dict]):
    return {block['item']: {
        k: v for k, v in block.items() if k != "states"
    } for block in reversed(blocks)}


def format_groups_table(blocks: list[dict]):
    return {
        block["group"]: [{
            "i": state["idx"],
            "n": state["name"],
            "o": [{
                "i": idx,
                "v": value,
                "p": {state["name"]: value},
                "s":  {state["idx"]: f"{state["name"]}={value},"},
            } for idx, value in enumerate(state["options"])]
        } for state in block["states"]]
        for block in blocks
    }


def format_types_loot_table(blocks: list[dict]):
    class Node:
        def __init__(self, entries: list[dict]):
            mid = len(entries) // 2
            self.keys = [entry["type"][10:] for entry in entries[:mid]]
            self.left = Node(entries[:mid]) if len(entries[:mid]) > 1 else entries[0]
            self.right = Node(entries[mid:]) if len(entries[:mid]) > 1 else entries[1]

    def format_node(node: Node):
        left = format_node(node.left) if isinstance(node.left, Node) else format_leaf(node.left)
        right = format_node(node.right) if isinstance(node.right, Node) else format_leaf(node.right)
        left["conditions"] = [{"condition":"location_check","predicate":{"block":{"blocks":node.keys}}}]
        return {"type":"alternatives","children":[left,right]}

    def format_leaf(data: dict):
        nbt = f"{{type:'{data['type']}',item:'{data['item']}',group:{data['group']}}}"
        functions = [{"function":"set_custom_data","tag":nbt}]
        return {
            "type": "item",
            "name": "egg",
            "functions": functions,
        } if data['group'] == 0 else {
            "type": "loot_table",
            "value": f"bs.block:get/{data['states'][-1]["id"]}",
            "functions": functions,
        }

    return {"pools":[{"rolls":1,"entries":[format_node(Node(blocks))]}]}


def format_state_loot_table(state: dict):
    alternatives = []
    for option in state["options"]:
        nbt = f"{{properties:{{{state['name']}:'{option}'}},_:{{{state['idx']}:'{state['name']}={option},'}}}}"
        conditions = [{"condition":"location_check","predicate":{"block":{"state":{f"{state['name']}":f"{option}"}}}}]
        functions = [{"function":"set_custom_data","tag":nbt}]
        alternatives.append({
            "type": "loot_table",
            "value": f"bs.block:get/{state["ref"]}",
            "conditions": conditions,
            "functions": functions,
        } if state["ref"] else {
            "type": "item",
            "name": "egg",
            "conditions": conditions,
            "functions": functions,
        })

    return {"pools":[{"rolls":1,"entries":[{"type": "alternatives","children":alternatives}]}]}
