from pathlib import Path

from .data_provider import DataProvider
from .data_processors import (
    CreateTypesFile,
    CreateStatesFile,
    CreateRegistryFiles,
    CreateTagsFiles,
    UpdateStorageFile,
)

def run(mc_version: str, datapacks_path: str, assets_path: str = None):

    data = DataProvider(mc_version)
    module = Path(datapacks_path).joinpath("Bookshelf/data/bs.block/")

    CreateTypesFile(data).process(module / "functions/load/types_table.mcfunction")
    CreateStatesFile(data).process(module / "functions/load/states_table.mcfunction")
    CreateRegistryFiles(data).process(module / "functions/get/registry/")
    CreateTagsFiles(data).process(module / "tags/blocks")

    if assets_path:
        UpdateStorageFile(data).process(Path(assets_path) / "command_storage_bs.dat")
