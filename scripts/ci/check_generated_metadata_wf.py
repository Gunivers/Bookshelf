from pathlib import Path
from metadata.check_generated_metadata import check
from files_provider.files_provider import FilePathsManager

from github_file_getter import get_not_merged_files


paths: list[Path] = get_not_merged_files()

modules = FilePathsManager(paths) \
        .only_dp_artifacts() \
        .remove_minecraft_namespaces() \
        .only_from_main_datapacks() \
        .get_modules()

if(errors := check(modules)):
    exit(1)
