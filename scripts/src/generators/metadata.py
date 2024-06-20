from generators.json_encoders import DCJSONEncoder, ManifestJSONEncoder, ModuleJSONEncoder
from generators.utils import render_json, write_file
from logger import BaseLogger, new_logger
from metadata.build_metadata import DatapackMetadata, FeatureMetadata, ModuleMetadata, build
from pathlib import Path
from typing import Callable
import copy
import definitions

def generate(logger: BaseLogger = new_logger()):
    logger.step("⏳ Checking metadata files…")
    metadata: list[DatapackMetadata] = build(logger)
    sort_metadata(metadata)

    if logger.has_level_errors():
        raise RuntimeError("Malformed metadata file detected. Generation interrupted!")

    logger.step("⚙️ Generating metadata files…")
    generate_manifest(adapt_for_manifest(metadata), write_file)
    logger.success("Manifest file generated!")

    for datapack in metadata:
        for module in datapack.modules:
            generate_module_metadata(module, write_file)
            generate_feature_metadata(module.features, module.module_path, write_file)
    logger.success("Metadata files generated!")

    logger.done()


def generate_manifest(metadata: list[DatapackMetadata], consumer: Callable[[str, Path], None]):
    path = definitions.GENERATED_PATH / "manifest.json"
    consumer(render_json(metadata, ManifestJSONEncoder), path)


def generate_module_metadata(metadata: ModuleMetadata, consumer: Callable[[str, Path], None]):
    path = metadata.module_path / ".metadata" / "generated" / "module.json"
    consumer(render_json(metadata, ModuleJSONEncoder), path)


def generate_feature_metadata(metadata: list[FeatureMetadata], module_path: Path, consumer: Callable[[str, Path], None]):
    path = module_path / ".metadata" / "generated" / "features.json"
    consumer(render_json(metadata, DCJSONEncoder), path)


def sort_metadata(metadata: list[DatapackMetadata]):
    metadata.sort(key=lambda x: x.name)
    for datapack in metadata:
        datapack.modules.sort(key=lambda x: x.name)
        if datapack.modules:
            for module in datapack.modules:
                module.features.sort(key=lambda x: x.name)
                if module.dependencies:
                    module.dependencies.sort()
                if module.weak_dependencies:
                    module.weak_dependencies.sort()
                module.authors.sort()
                if module.contributors:
                    module.contributors.sort()
                if module.features:
                    for feature in module.features:
                        if feature.dependencies:
                            feature.dependencies.sort()
                        if feature.weak_dependencies:
                            feature.weak_dependencies.sort()
                        feature.authors.sort()
                        if feature.contributors:
                            feature.contributors.sort()


def adapt_for_manifest(metadata: list[DatapackMetadata]):
    copy_metadata = copy.deepcopy(metadata)
    for datapack in copy_metadata:
        for module in datapack.modules:
            module.module_path = module.module_path.relative_to(definitions.ROOT_DIR).as_posix()
    return copy_metadata
