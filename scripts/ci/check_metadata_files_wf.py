from pathlib import Path
from metadata.check_module_metadata_file import check
from files_provider.files_provider import FilePathsManager, FilesProvider

from github_file_getter import get_not_merged_files


paths: list[Path] = get_not_merged_files()

files = FilePathsManager(paths) \
        .only_dp_artifacts() \
        .remove_minecraft_namespaces() \
        .get_modules() \
        .get()

if(errors := check(files)):
    exit(1)
