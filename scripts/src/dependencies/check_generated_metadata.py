from pathlib import Path
import definitions
from dependencies.generate_metadata import compute
from files_provider.files_provider import Feature, ModuleManager
from function_call_getter.function_call_getter import FunctionCallGetter
from function_call_getter._types import VisitableFeatureSet
from logger.logger import Logger


def check(module_manager: ModuleManager) -> bool:
    logger = Logger()
    logger.print_step(f'The following modules will be analyzed:', '🧩')
    logger.print_log(*[str(module.path.relative_to(definitions.ROOT_DIR)) for module in module_manager.get()])


    features: list[Feature] = module_manager.get_all_features()
    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(features)
    logger.print_step(f"Found {len(feature_set.features)} features:", "📦")
    logger.print_log(*[tag.mc_path for tag in feature_set.features])

    logger.print_step("Computing their metadata file…", "⏳")

    compute(feature_set, comparing, logger)

    return logger.print_done()



def comparing(path: Path, content: str, logger: Logger):
    if not path.exists():
        logger.print_err(f"Metadata file '{path.relative_to(definitions.ROOT_DIR)}' was not generated. Please run the generator and retry after.")
    else:
        with open(path, "r") as file:
            if file.read() != content:
                logger.print_err(f"Metadata file '{path.relative_to(definitions.ROOT_DIR)}' is outdated. Please run the generator and retry after.")
            else:
                logger.print_success(f"Metadata file '{path.relative_to(definitions.ROOT_DIR)}' is up-to-date.")
