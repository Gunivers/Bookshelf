from pathlib import Path
from check_feature_tag.check_feature_tag import check
from files_provider.files_provider import FilesProvider

from scripts.ci.github_file_getter import get_not_merged_files


paths: list[Path] = get_not_merged_files()

files = FilesProvider() \
        .get_all_files_not_upstreamed() \
        .only_dp_artifacts() \
        .get_features()

errors = check(files)

if(errors):
    exit(1)
