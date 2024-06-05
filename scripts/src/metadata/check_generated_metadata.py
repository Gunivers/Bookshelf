from functools import partial
from pathlib import Path
import definitions
from logger import newLogger
from metadata.build_metadata import DatapackMetadata, build
from metadata.generate_metadata import adapt_for_manifest, generate_feature_metadata, generate_manifest, generate_module_metadata, sort_metadata
from files_provider.files_provider import Feature, ModuleManager
from function_call_getter.function_call_getter import FunctionCallGetter
from function_call_getter._types import VisitableFeatureSet
from logger.logger import Logger


def check(module_manager: ModuleManager) -> bool:
    logger = newLogger()
    logger.print_step(f'The following modules will be analyzed:', '🧩')
    logger.print_log(*[str(module.path.relative_to(definitions.ROOT_DIR)) for module in module_manager.get()])


    features: list[Feature] = module_manager.get_all_features()
    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(features)
    logger.print_step(f"Found {len(feature_set.features)} features:", "📦")
    logger.print_log(*[tag.mc_path for tag in feature_set.features])

    logger.print_step("Computing their metadata file…", "⏳")

    metadata: list[DatapackMetadata] = build(logger)
    sort_metadata(metadata)
    generate_manifest(adapt_for_manifest(metadata), partial(__comparing, logger))
    for datapack in metadata:
        for module in datapack.modules:
            generate_module_metadata(module, partial(__comparing, logger))
            generate_feature_metadata(module.features, module.module_path, partial(__comparing, logger))

    return logger.print_done()



def __comparing(logger: Logger, content: str, path: Path):
    if not path.exists():
        logger.print_err(f"Metadata file '{path.relative_to(definitions.ROOT_DIR)}' was not generated. Please run the generator and retry after.")
    else:
        with open(path, "r") as file:
            if file.read() != content:
                logger.print_err(f"Metadata file '{path.relative_to(definitions.ROOT_DIR)}' is outdated. Please run the generator and retry after.")
            else:
                logger.print_success(f"Metadata file '{path.relative_to(definitions.ROOT_DIR)}' is up-to-date.")
