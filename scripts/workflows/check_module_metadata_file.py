from checks.module_metadata_file import check
from files_provider.files_provider import FilesProvider

modules = FilesProvider() \
    .get_not_merged_pr_files() \
    .only_dp_artifacts() \
    .remove_minecraft_namespaces() \
    .only_from_main_datapacks() \
    .get_modules() \
    .get()

exit(check(modules))
