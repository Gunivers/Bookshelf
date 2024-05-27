from pathlib import Path
from dependencies.check_module_metadata_file import check
from files_provider.files_provider import FilesProvider

from github_file_getter import get_not_merged_files


paths: list[Path] = get_not_merged_files()

files = FilesProvider() \
        .get_all_files_not_upstreamed() \
        .only_dp_artifacts() \
        .get_modules() \
        .get()

if(errors := check(files)):
    exit(1)
