import sys

from pathlib import Path
from .data_provider import DataProvider
from .data_processors import CreateTagsFiles, CreateTypesFile, CreateStatesFile, CreateRegistryFiles, UpdateStorageFile


def run(mc_version: str, world_path: str):

    data = DataProvider(mc_version)
    module = Path(world_path).joinpath("datapacks/Bookshelf/data/bs.block/")

    CreateTypesFile(module.joinpath("functions/load/types_table.mcfunction")).process(data)
    CreateStatesFile(module.joinpath("functions/load/states_table.mcfunction")).process(data)
    CreateRegistryFiles(module.joinpath("functions/get/registry/")).process(data)
    CreateTagsFiles(module.joinpath("tags/blocks")).process(data)

    UpdateStorageFile(Path(world_path).joinpath("assets/command_storage_bs.dat")).process(data)


if __name__ == "__main__":
    try:
        run(sys.argv[1], sys.argv[2])
    except IndexError:
        raise IndexError("Usage: python block.py <minecraft_version> <world_path>")
