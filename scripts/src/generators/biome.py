import requests
import sys

from pathlib import Path
from generators.contracts import DataProcessor

from generators.processors.biome import (
    CreateTagsFiles,
    CreatePredicatesFiles,
    CreateTypesFile,
    UpdateStorageFile,
)

BIOMES_URL = "https://raw.githubusercontent.com/misode/mcmeta/{}-summary/data/worldgen/biome/data.min.json"


def get_biomes(mc_version: str) -> list[dict]:
    """
    Fetches biomes data for the given version of minecraft.
    """
    response = requests.get(BIOMES_URL.format(mc_version))
    response.raise_for_status()

    return [{
        "id": idx + 1,
        "type": biome if biome.startswith("minecraft:") else f"minecraft:{biome}",
        "temperature": float(data["temperature"]),
        "has_precipitation": bool(data["has_precipitation"]),
    } for idx, (biome, data) in enumerate(response.json().items())]


def get_processors(datapacks: Path, assets: Path = None) -> list[DataProcessor]:
    """
    Gets a list of objects used to process biomes data.
    """
    module = datapacks / "Bookshelf/data/bs.biome/"

    return filter(None, [
        CreateTagsFiles(module / "tags/worldgen/biome"),
        CreatePredicatesFiles(module / "predicates"),
        CreateTypesFile(module / "functions/load/types_table.mcfunction"),
        UpdateStorageFile(assets / "command_storage_bs.dat") if assets else None,
    ])


def run(mc_version: str, datapacks_path: str, assets_path: str = None):
    """
    Generates files for the biome module.
    """
    print("⛰️ Running the biome generator")

    biomes = get_biomes(mc_version)
    for processor in get_processors(
        Path(datapacks_path),
        Path(assets_path) if assets_path else None
    ):
        processor.process(biomes)

    print("✅ Done!")


if __name__ == "__main__":
    try:
        run(*sys.argv[1:])
    except TypeError as e:
        raise TypeError("Usage: python biome.py <minecraft_version> <datapacks_path> [assets_path]") from e
