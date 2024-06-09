
import copy
import json
import os
from pathlib import Path
from typing import Callable
from metadata.JSONEncoder import DCJSONEncoder, ManifestJSONEncoder, ModuleJSONEncoder
from metadata.build_metadata import DatapackMetadata, FeatureMetadata, ModuleMetadata, build
import definitions

def generate():
    metadata: list[DatapackMetadata] = build()
    sort_metadata(metadata)
    generate_manifest(adapt_for_manifest(metadata), __write_json)
    for datapack in metadata:
        for module in datapack.modules:
            generate_module_metadata(module, __write_json)
            generate_feature_metadata(module.features, module.module_path, __write_json)


def generate_manifest(metadata: list[DatapackMetadata], consumer: Callable[[str, Path], None]):
    path = definitions.GENERATED_PATH / "manifest.json"
    consumer(__generate(metadata, ManifestJSONEncoder), path)


def generate_module_metadata(metadata: ModuleMetadata, consumer: Callable[[str, Path], None]):
    path = metadata.module_path / ".metadata" / "generated" / "module.json"
    consumer(__generate(metadata, ModuleJSONEncoder), path)


def generate_feature_metadata(metadata: list[FeatureMetadata], module_path: Path, consumer: Callable[[str, Path], None]):
    path = module_path / ".metadata" / "generated" / "features.json"
    consumer(__generate(metadata, DCJSONEncoder), path)


def __generate(obj, encoder: type[json.JSONEncoder] = DCJSONEncoder):
    return json.dumps(obj, indent=4, cls=encoder)

def __write_json(json: str, path: Path):
    os.makedirs(path.parent, exist_ok=True)
    with open(path, 'w') as file:
        file.write(json)

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
