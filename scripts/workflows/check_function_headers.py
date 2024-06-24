from checks.function_headers import check
from files_provider.files_provider import FilesProvider

functions = FilesProvider() \
    .get_not_merged_pr_files() \
    .only_dp_artifacts() \
    .remove_minecraft_namespaces() \
    .only_from_main_datapacks() \
    .get_functions()

exit(check(functions))
