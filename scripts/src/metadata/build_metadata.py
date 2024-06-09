from dataclasses import dataclass
import json
from pathlib import Path
from typing import Tuple
from check_feature_tag.check_feature_tag import check, check_feature
from files_provider._types import Datapack
from files_provider.files_provider import DatapackManager, FilesProvider, ModuleManager
from logger import newLogger
from logger.logger import Logger
from metadata.check_module_metadata_file import check_module
from metadata.compute_dependencies import Dependencies, ModuleDependencies, compute_dependencies
from files_provider._types import Feature

@dataclass
class Updated:
    date: str
    version: str

@dataclass
class FeatureMetadata:
    name: str
    documentation: str
    authors: list[str]
    contributors: list[str] | None
    created: Updated
    updated: Updated
    dependencies: list[str] | None
    weak_dependencies: list[str] | None
    feature_path: Path
    mc_path: str

@dataclass
class ModuleMetadata:
    name: str
    display_name: str
    description: str
    documentation: str
    authors: list[str]
    contributors: list[str] | None
    icon: str | None
    module_path: Path
    dependencies: list[str] | None
    weak_dependencies: list[str] | None
    features: list[FeatureMetadata]

@dataclass
class DatapackMetadata:
    name: str
    description: str
    pack_format: int
    modules: list[ModuleMetadata]


def build(logger: Logger = newLogger()) -> list[DatapackMetadata]:
    managers = FilesProvider().separated_datapacks()
    datapack_metadata = []

    for manager in managers:
        metadata = build_datapack_metadata(manager, logger)
        if metadata:
            datapack_metadata.append(metadata)

    return datapack_metadata


def build_datapack_metadata(manager: DatapackManager, logger: Logger) -> DatapackMetadata:
    datapack = manager.get()[0]
    logger.new_error_context()
    result = get_mcmeta_infos(datapack, logger)
    if not logger.reduce_error_context():
        format, description = result
        modules = [build_module_metadata(module_manager, logger) for module_manager in manager.get_separated_modules()]
        modules = [module for module in modules if module]
        return DatapackMetadata(datapack.name, description, format, modules)


def get_mcmeta_infos(datapack: Datapack, logger: Logger) -> Tuple[int, str]:
    with open(datapack.path / "pack.mcmeta") as file:
        content: dict = json.load(file)
        if content.get("pack", None) != None:
            if content["pack"].get("pack_format", None) == None:
                logger.print_err(f"'pack_format' is missing in the pack.mcmeta of '{datapack.name}'")
            elif content["pack"].get("description", None) == None:
                logger.print_err(f"'description' is missing in the pack.mcmeta of '{datapack.name}'")
            return content["pack"]["pack_format"], content["pack"]["description"]
        logger.print_err(f"'pack' is missing in the pack.mcmeta of '{datapack.name}'")


def build_module_metadata(manager: ModuleManager, logger: Logger) -> ModuleMetadata:
    module = manager.get()[0]
    logger.new_error_context()
    result = check_module(module, logger)

    if not logger.reduce_error_context():
        documentation = result.get("documentation", None)
        description = result.get("description", None)
        display_name = result.get("display_name", None)
        icon = result.get("icon", None)
        if icon:
            icon = module.path / '.metadata' / icon

        module_dep: ModuleDependencies = compute_dependencies(manager, result.get("weak_dependencies", []), logger)
        authors = set()
        contributors = set()

        feature_metadata: list[FeatureMetadata] = []
        for feature in manager.get_all_features():
            met = build_features_metadata(feature, module_dep.features_dependencies.get(feature.mc_path, Dependencies(None, None)), logger)
            if met:
                feature_metadata.append(met)
                authors.extend(met.authors)
                if met.contributors:
                    contributors.extend(met.contributors)

        if len(contributors) == 0:
            contributors = None
        else:
            contributors = list(contributors)

        authors = list(authors)
        return ModuleMetadata(name=module.namespace, display_name=display_name, description=description, documentation=documentation, icon=icon, contributors=contributors, authors=authors, dependencies=module_dep.dependencies.dependencies, weak_dependencies=module_dep.dependencies.weak_dependencies, features=feature_metadata, module_path=module.path)


def build_features_metadata(feature: Feature, dependencies: Dependencies, logger: Logger) -> FeatureMetadata:
    logger.new_error_context()
    result = check_feature(feature, logger)
    if not logger.reduce_error_context():
        documentation = result.get("documentation", None)
        authors = result.get("authors", None)
        contributors = result.get("contributors", None)
        created = Updated(result.get("created", {}).get("date", None), result.get("created", {}).get("minecraft_version", None))
        updated = Updated(result.get("updated", {}).get("date", None), result.get("updated", {}).get("minecraft_version", None))
        return FeatureMetadata(name=feature.name, documentation=documentation, authors=authors, contributors=contributors, created=created, updated=updated, dependencies=dependencies.dependencies, weak_dependencies=dependencies.weak_dependencies, feature_path=feature.real_path, mc_path=feature.mc_path)
