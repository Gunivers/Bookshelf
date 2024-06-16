from dataclasses import dataclass
from functools import partial
from pathlib import Path
from typing import Tuple
from files_provider.files_provider import Feature, ModuleManager
from function_call_getter._types import VisitableFeatureSet, VisitableFunctionTag, Visitor, VisitableFeature
from function_call_getter.function_call_getter import FunctionCallGetter
from files_provider._types import DataCategory
import definitions
from logger.logger import Logger


@dataclass
class Dependencies:
    dependencies: list[str]
    weak_dependencies: list[str]

@dataclass
class ModuleDependencies:
    dependencies: Dependencies
    features_dependencies: dict[str, Dependencies]


def compute_dependencies(module_manager: ModuleManager, weak_dependencies: set[str], logger: Logger) -> ModuleDependencies:
    """
    :param module_manager: The module manager to compute the dependencies from. The module manager should contains only one module.
    :return: A tuple containing the module dependencies and the weak dependencies.
    """
    if len(module_manager.get()) == 1:
        features: list[Feature] = module_manager.get_all_features()
        getter = FunctionCallGetter()
        feature_set: VisitableFeatureSet = getter.build_function_call_tree(features)

        module_dependencies: set[str] = set()
        feature_dependencies: dict[str, FeatureReferences] = {}
        visitor = Visitor([VisitableFunctionTag], partial(__compute_references, feature_dependencies, module_dependencies))
        visitor.visit(feature_set)

        # Structure features dependencies
        features_dependencies: dict[str, Dependencies] = {}
        for feature, feature_references in feature_dependencies.items():
            dependencies, weak_dep = __compute_dependencies([dep.namespace for dep in feature_references.dependencies], weak_dependencies, feature, "feature", True, logger)
            features_dependencies[feature] = Dependencies(list(dependencies) if dependencies else None, list(weak_dep) if weak_dependencies else None)

        # Structure module dependencies
        dependencies, weak_dependencies = __compute_dependencies(module_dependencies, weak_dependencies, module_manager.get()[0].namespace, "module", False, logger)
        return ModuleDependencies(Dependencies(list(dependencies) if dependencies else None, list(weak_dependencies) if weak_dependencies else None), features_dependencies)

@dataclass
class FeatureReferences:
    mc_path: str
    dependencies: set[VisitableFunctionTag]

    def __hash__(self):
        return hash(self.mc_path)

    def __eq__(self, other):
        if not isinstance(other, FeatureReferences):
            return False
        return self.mc_path == other.mc_path

@dataclass
class ModuleReferences:
    path: Path
    dependencies: set[VisitableFunctionTag]
    features: set[FeatureReferences]

def __compute_dependencies(dependencies: set[str], weak_dependencies: set[str], name: str, type: str, check_non_use: bool, logger: Logger) -> Tuple[set[str], set[str]]:
    if not dependencies:
        return None, None
    if not weak_dependencies:
        return dependencies, None

    weak_dependencies = set(weak_dependencies)
    used_weak_dependencies = set()
    deps = set(dependencies)
    for tag in dependencies:
        if tag in weak_dependencies:
            used_weak_dependencies.add(tag)
            deps.remove(tag)
    diff = weak_dependencies - used_weak_dependencies
    if check_non_use and len(diff) > 0:
            logger.print_warn(f"{type.capitalize()} {name} has weak dependencies that are not used: {",".join(diff)}.")
    weak_dependencies = weak_dependencies
    return deps or None, weak_dependencies or None



def __get_feature_references(feature_dependencies: dict[str, ModuleReferences], feature: VisitableFeature, module_path: Path) -> FeatureReferences:
    feature_references = feature_dependencies.get(feature, None)
    if feature_references is None:
        feature_references = FeatureReferences(feature.mc_path, set())
        feature_dependencies[feature.mc_path] = feature_references
    return feature_references

def __compute_references(feature_dependencies: dict[str, FeatureReferences], module_dependencies: set[str], tag: VisitableFunctionTag) -> bool:
    module_path = Path(str(tag.real_path).split(DataCategory.FUN_TAG.value.path_fragment)[0])

    bookshelf_tag = tag.content.get(definitions.FEATURE_TAG_NAMESPACE, None)
    if bookshelf_tag is not None and bookshelf_tag.get('feature', False) and tag.feature.namespace != tag.namespace.split(":")[0]:
        # Add to feature dependencies
        feature_references = __get_feature_references(feature_dependencies, tag.feature, module_path)
        feature_references.dependencies.add(tag)
        # Add to module dependencies
        module_dependencies.add(tag.namespace)
    return False
