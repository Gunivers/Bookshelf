import sys
import math
import nbtlib
from pathlib import Path

from .data import DataProvider, ITEMS
from .utils import render, write_file

def run(mc_version, world_path):

    data = DataProvider(mc_version)
    module = Path(world_path).joinpath("datapacks/Bookshelf/data/bs.block/")

    print("⚙️ Generating block tags")
    write_file(module.joinpath("tags/blocks/has_state.json"), [
        '{"values":' + render([block["type"] for block in data.blocks if block['group'] > 0]) + "}"
    ])
    for i in range(math.floor(math.log2(len(data.blocks))) + 1):
        write_file(module.joinpath(f"tags/blocks/type/group_{2**i}.json"), [
            '{"values":' + render([block["type"] for block in data.blocks if (block["id"] >> i) & 1]) + "}"
        ])
    print("✅ Done!")

    print("⚙️ Generating types_table.mcfunction")
    write_file(module.joinpath("functions/load/types_table.mcfunction"), [
        "# This file was automatically generated, do not edit it",
        "data modify storage bs:const block set value " + render([{
            "id": block["id"],
            "group": block["group"],
            "type": block["type"],
            "item": ITEMS.get(block['type'], block['type']),
        } for block in data.blocks])
    ])
    print("✅ Done!")

    print("⚙️ Generating states_table.mcfunction")
    write_file(module.joinpath("functions/load/states_table.mcfunction"), [
        "# This file was automatically generated, do not edit it"
    ] + [
        "data modify storage bs:const block[{group:" + str(group + 1) + "}].iterable_properties set value " + render([{
            "name": name,
            "options": [{
                "index": index,
                "value": value,
                "state": f"{name}={value},",
                "property": {name: value},
            } for index, value in enumerate(options)],
        } for name, options in states.items()]) for group, states in enumerate(data.groups[1:])
    ])
    print("✅ Done!")

    print("⚙️ Generating registry functions")
    for group, states in enumerate(data.groups[1:]):
        write_file(module.joinpath(f"functions/get/registry/{group + 1}.mcfunction"), [
            "# This file was automatically generated, do not edit it"
        ] + [
            'execute if block ~ ~ ~ #bs.block:has_state[%name%=%value%] run data modify storage bs:out block.iterable_properties[{name:"%name%"}].options[{value:"%value%"}].selected set value 1b'
                .replace("%name%", name)
                .replace("%value%", value)
            for name, options in states.items() for value in options
        ])
    print("✅ Done!")

    print("⚙️ Updating storage file asset")
    with nbtlib.load(Path(world_path).joinpath("assets/command_storage_bs.dat")) as storage:
        storage['']['data']['contents']['const']['block'] = nbtlib.parse_nbt(render([{
            "id": block["id"],
            "group": block["group"],
            "type": block["type"],
            "item": ITEMS.get(block['type'], block['type']),
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


if __name__ == "__main__":
    try:
        run(sys.argv[1], sys.argv[2])
    except IndexError:
        raise IndexError("Usage: python block.py <minecraft_version> <world_path>")
