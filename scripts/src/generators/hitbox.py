from collections import defaultdict
from datetime import datetime
from generators.utils import render_json, render_snbt, write_file
from logger import BaseLogger, new_logger
from mcdata.hitbox import get_shapes
from pathlib import Path
from typing import Callable
import definitions


def generate(mc_version: str, logger: BaseLogger = new_logger()):
    logger.step("🚀 Fetching 'bs.hitbox' data…")
    shapes = get_shapes(mc_version)

    logger.step("⚙️ Generating 'bs.hitbox' files…")
    generate_has_offset_block_tag(shapes, write_file)
    logger.success("Block tag 'has_offset.json' generated!")
    generate_is_composite_block_tag(shapes, write_file)
    logger.success("Block tag 'is_composite.json' generated!")
    generate_blocks_loot_tables(shapes, write_file)
    logger.success("Loot tables for blocks generated!")

    logger.done()


def generate_is_composite_block_tag(shapes: list[dict], consumer: Callable[[str, Path], None]):
    consumer(render_json({
        "__bookshelf__": {
            "feature": True,
            "documentation": "https://bookshelf.docs.gunivers.net/en/latest/modules/hitbox.html#is-composite",
            "authors": [
                "Aksiome"
            ],
            "created": {
                "date": "2024/09/28",
                "minecraft_version": "1.21"
            },
            "updated": {
                "date": datetime.now().strftime("%Y/%m/%d"),
                "minecraft_version": definitions.MC_VERSION
            }
        },
        "values": list(sorted([block for shape in shapes for block in shape["blocks"]]))
    }), definitions.DATAPACKS_PATH / "Bookshelf/data/bs.hitbox/tags/block/is_composite.json")


def generate_has_offset_block_tag(shapes: list[dict], consumer: Callable[[str, Path], None]):
    consumer(render_json({
        "__bookshelf__": {
            "feature": True,
            "documentation": "https://bookshelf.docs.gunivers.net/en/latest/modules/hitbox.html#has-offset",
            "authors": [
                "Aksiome"
            ],
            "created": {
                "date": "2024/09/28",
                "minecraft_version": "1.21"
            },
            "updated": {
                "date": datetime.now().strftime("%Y/%m/%d"),
                "minecraft_version": definitions.MC_VERSION
            }
        },
        "values": list(sorted([
            block for shape in shapes for block in shape["blocks"]
            if all(entry["has_offset"] for entry in shape["shapes"])
        ]))
    }), definitions.DATAPACKS_PATH / "Bookshelf/data/bs.hitbox/tags/block/has_offset.json")


def generate_blocks_loot_tables(shapes: list[dict], consumer: Callable[[str, Path], None]):
    consumer(render_json(
        format_blocks_loot_table(shapes),
        indent=None,
    ), definitions.DATAPACKS_PATH / "Bookshelf/data/bs.hitbox/loot_table/get_block/get.json")

    for group in shapes:
        if group["group"] > 0:
            consumer(render_json(
                format_block_group_loot_table(group["shapes"]),
                indent=None,
            ), definitions.DATAPACKS_PATH / f"Bookshelf/data/bs.hitbox/loot_table/get_block/{group["group"]}.json")


def format_blocks_loot_table(groups: list[dict]):
    class Node:
        def __init__(self, entries: list[dict]):
            mid = len(entries) // 2
            self.keys = [block[10:] for entry in entries[:mid] for block in entry["blocks"]]
            self.left = Node(entries[:mid]) if len(entries[:mid]) > 1 else entries[0]
            self.right = Node(entries[mid:]) if len(entries[mid:]) > 1 else entries[1]

    def format_node(node: Node):
        left = format_node(node.left) if isinstance(node.left, Node) else format_leaf(node.left)
        right = format_node(node.right) if isinstance(node.right, Node) else format_leaf(node.right)
        left["conditions"] = [{"condition":"location_check","predicate":{"block":{"blocks":node.keys}}}]
        return {"type":"alternatives","children":[left,right]}

    def format_leaf(data: dict):
        return {
            "type": "loot_table",
            "value": f"bs.hitbox:get_block/{data["group"]}"
        } if data["group"] > 0 else {
            "type": "item",
            "name": "egg",
            "functions": [{"function":"set_custom_data","tag":f"{{shape:{render_snbt(data["shapes"][0]["shape"])}}}"}],
        }

    return {"pools":[{"rolls":1,"entries":[format_node(Node(groups))]}]}


def format_block_group_loot_table(group: list[dict]):
    def format_tree(data: list[dict], properties: list[str]):
        prop = properties[0]
        values = defaultdict(list)

        for item in data:
            values[item["properties"].get(prop)].append(item)

        entries = []
        for value, entry in values.items():
            node = {
                "type": "alternatives",
                "children": format_tree(entry, properties[1:])
            } if len(properties) > 1 else {
                "type": "item",
                "name": "egg",
                "functions": [{"function":"set_custom_data","tag":f"{{shape:{render_snbt(entry[0]["shape"])}}}"}],
            }
            node["conditions"] = [{"condition":"location_check","predicate":{"block":{"state":{prop:value}}}}]
            entries.append(node)

        entries[-1].pop("conditions")
        return entries

    props = {name: set(entry["properties"][name] for entry in group) for name in group[0]["properties"]}
    props = [name for name, _ in sorted(props.items(), key=lambda item: len(item[1]))]

    return {"pools":[{"rolls":1,"entries":[{"type":"alternatives","children":format_tree(group, props)}]}]}
