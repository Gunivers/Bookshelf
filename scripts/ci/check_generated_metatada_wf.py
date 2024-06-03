from pathlib import Path
from metadata.check_generated_metadata import check
from files_provider.files_provider import FilesProvider

from github_file_getter import get_not_merged_files


paths: list[Path] = get_not_merged_files()

modules = FilesProvider() \
        .get_all_files_not_upstreamed() \
        .only_dp_artifacts() \
        .get_modules()

if(errors := check(modules)):
    exit(1)
