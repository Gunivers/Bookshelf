from pathlib import Path
from check_function_headers.check_function_headers import check
from files_provider.files_provider import FilePathsManager, FilesProvider

from github_file_getter import get_not_merged_files


paths: list[Path] = get_not_merged_files()
files = FilePathsManager(paths) \
        .only_dp_artifacts() \
        .get_features()

if(errors := check(files)):
    exit(1)
