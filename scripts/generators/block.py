import requests
import sys

from pathlib import Path
from dataclasses import dataclass
from contracts import DataProcessor

from processors.block import (
    CreateTagsFiles,
    CreateTypesFile,
    CreateStatesFile,
    CreateRegistryFiles,
    UpdateStorageFile,
)

BLOCKS_URL = "https://raw.githubusercontent.com/misode/mcmeta/{}-summary/blocks/data.min.json"
ITEMS_URL = "https://raw.githubusercontent.com/misode/mcmeta/{}-registries/item/data.min.json"

@dataclass
class Blocks:
    types: list[dict]
    groups: list[dict]
    items: list[str]


def get_blocks(mc_version: str) -> Blocks:
    """
    Fetches blocks data for the given version of minecraft.
    """
    response = requests.get(BLOCKS_URL.format(mc_version))
    response.raise_for_status()

    types = []
    groups = [{}]

    for index, (block, data) in enumerate(response.json().items()):
        states = {}
        for name, options in data[0].items():
            idx = options.index(data[1][name])
            states[name] = options[idx:] + options[:idx]

        if states not in groups:
            groups.append(states)

        types.append({
            "id": index + 1,
            "group": groups.index(states),
            "type": block if block.startswith("minecraft:") else f"minecraft:{block}"
        })

    response = requests.get(ITEMS_URL.format(mc_version))
    response.raise_for_status()

    items = [
        item if item.startswith("minecraft:") else f"minecraft:{item}"
        for item in response.json()
    ]

    return Blocks(types, groups, items)


def get_processors(datapacks: Path, assets: Path = None) -> list[DataProcessor]:
    """
    Gets a list of objects used to process blocks data.
    """
    module = datapacks / "Bookshelf/data/bs.block/"

    return filter(None, [
        CreateTagsFiles(module / "tags/blocks"),
        CreateTypesFile(module / "functions/load/types_table.mcfunction"),
        CreateStatesFile(module / "functions/load/states_table.mcfunction"),
        CreateRegistryFiles(module / "functions/get/registry/"),
        UpdateStorageFile(assets / "command_storage_bs.dat") if assets else None,
    ])


def run(mc_version: str, datapacks_path: str, assets_path: str = None):
    """
    Generates files for the block module.
    """
    print("🧱 Running the block generator")

    blocks = get_blocks(mc_version)
    for processor in get_processors(
        Path(datapacks_path),
        Path(assets_path) if assets_path else None
    ):
        processor.process(blocks)

    print("✅ Done!")


if __name__ == "__main__":
    try:
        run(*sys.argv[1:])
    except TypeError as e:
        raise TypeError("Usage: python block.py <minecraft_version> <datapacks_path> [assets_path]") from e
