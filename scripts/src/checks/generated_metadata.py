from files_provider.files_provider import Feature, ModuleManager
from function_call_getter._types import VisitableFeatureSet
from function_call_getter.function_call_getter import FunctionCallGetter
from functools import partial
from logger import BaseLogger, new_logger
from metadata.build_metadata import DatapackMetadata, build
from generators.metadata import adapt_for_manifest, generate_feature_metadata, generate_manifest, generate_module_metadata, sort_metadata
from pathlib import Path
import definitions


def check(module_manager: ModuleManager) -> bool:
    logger = new_logger()
    logger.step("🧩 The following modules will be analyzed:")
    logger.print(*[str(module.path.relative_to(definitions.ROOT_DIR)) for module in module_manager.get()])

    features: list[Feature] = module_manager.get_all_features()
    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(features)
    logger.step(f"📦 Found {len(feature_set.features)} features:")
    logger.print(*[tag.mc_path for tag in feature_set.features])

    logger.step("⏳ Checking their metadata file…")

    metadata: list[DatapackMetadata] = build(logger)
    sort_metadata(metadata)
    for datapack in metadata:
        for module in datapack.modules:
            generate_module_metadata(module, partial(__comparing, logger))
            generate_feature_metadata(module.features, module.module_path, partial(__comparing, logger))
    generate_manifest(adapt_for_manifest(metadata), partial(__comparing, logger))

    return logger.done()


def __comparing(logger: BaseLogger, content: str, path: Path):
    if not path.exists():
        logger.error(f"Metadata file '{path.relative_to(definitions.ROOT_DIR)}' was not generated. Please run the generator and retry after.")
    else:
        with open(path, "r") as file:
            if file.read().strip() != content:
                logger.error(f"Metadata file '{path.relative_to(definitions.ROOT_DIR)}' is outdated. Please run the generator and retry after.")
            else:
                logger.success(f"Metadata file '{path.relative_to(definitions.ROOT_DIR)}' is up-to-date.")
