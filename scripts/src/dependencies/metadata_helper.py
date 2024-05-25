from dataclasses import dataclass
from pathlib import Path
from function_call_getter._types import VisitableFunctionTag, VisitableFeature
from files_provider._types import DataCategory
import definitions


def get_or_create_module_metadata(module_dependencies, module_name, module_path, namespace):
    module_metadata = module_dependencies.get(module_name, None)
    if module_metadata is None:
        module_metadata = ModuleMetadata(name=module_name, path=module_path, dependencies=set(), features=set(), namespace=namespace)
        module_dependencies[module_name] = module_metadata
    return module_metadata

def get_or_create_feature_metadata(feature_dependencies, feature, module_path):
    metadata = feature_dependencies.get(feature, None)
    if metadata is None:
        metadata = FeatureMetadata(name=feature.name, module_path=module_path, mc_path=feature.mc_path, dependencies=set(), this=feature, namespace=feature.namespace)
        feature_dependencies[feature] = metadata
    return metadata

def compute_metadata(feature_dependencies: dict[str, 'FeatureMetadata'], module_dependencies: dict[str, 'ModuleMetadata'], tag: VisitableFunctionTag | VisitableFeature) -> bool:
    module_path = Path(str(tag.real_path).split(DataCategory.FUN_TAG.value.path_fragment)[0])
    if isinstance(tag, VisitableFeature):
        module_name = tag.namespace.split('.')[1]
        module_metadata = get_or_create_module_metadata(module_dependencies, module_name, module_path, tag.namespace)
        metadata = get_or_create_feature_metadata(feature_dependencies, tag, module_path)
        module_metadata.features.add(metadata)
        return False

    bookshelf_tag = tag.content.get(definitions.FEATURE_TAG_NAMESPACE, None)
    if bookshelf_tag != None and bookshelf_tag.get('feature', False) and tag.feature.namespace != tag.namespace.split(":")[0]:
        # Add to feature dependencies
        metadata = get_or_create_feature_metadata(feature_dependencies, tag.feature, module_path)
        metadata.dependencies.add(tag)
        # Add to module dependencies
        module_name = tag.feature.namespace.split('.')[1]
        module_metadata = get_or_create_module_metadata(module_dependencies, module_name, module_path, tag.feature.namespace)
        module_metadata.features.add(metadata)
        module_metadata.dependencies.add(tag)
    return False

@dataclass
class FeatureMetadata:
    name: str
    namespace: str
    module_path: Path
    mc_path: str
    dependencies: set[VisitableFunctionTag]
    this: VisitableFeature

    def __hash__(self):
        return hash(self.mc_path)

    def __eq__(self, other):
        if not isinstance(other, FeatureMetadata):
            return False
        return self.mc_path == other.mc_path

@dataclass
class ModuleMetadata:
    name: str
    namespace: str
    path: Path
    dependencies: set[VisitableFunctionTag]
    features: set[FeatureMetadata]
