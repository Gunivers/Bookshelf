from dataclasses import dataclass
from functools import partial
import os
from pathlib import Path
from files_provider.files_provider import Feature, ModuleManager
from function_call_getter._types import VisitableFeatureSet, VisitableFunctionTag, Visitor
import definitions
from function_call_getter.function_call_getter import FunctionCallGetter
from files_provider._types import DataCategory
from jinja2 import Environment, FileSystemLoader



def generate(module_manager: ModuleManager):
    print('🧩 The following modules will be analyzed:')
    print("\n".join([ "  " + str(module.path.relative_to(definitions.ROOT_DIR)) for module in module_manager.get()]))


    features: list[Feature] = module_manager.get_all_features()
    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(features)
    print(f"📦 Found {len(feature_set.features)} features:")
    for feature in feature_set.features:
        print(f"  {feature.mc_path}")

    print("⏳ Generating their metadata file…")

    module_dependencies: dict[str, ModuleMetadata] = {}
    feature_dependencies: dict[str, FeatureMetadata] = {}
    visitor = Visitor([VisitableFunctionTag], partial(callback, feature_dependencies, module_dependencies))
    visitor.visit(feature_set)

    env = Environment(loader=FileSystemLoader(os.path.join(definitions.ROOT_DIR, "scripts", "src", "dependencies", "templates")))
    template = env.get_template("metadata.jinja")

    for module in module_dependencies.values():
        content = template.render(dependencies=[tag.mc_path for tag in module.dependencies])
        generate_file(module.path, "#" + module.name, content)
        print("⚙️ Generated metadata for module " + module.name)

        for feature in module.features:
            content = template.render(dependencies=[tag.mc_path for tag in feature.dependencies])
            generate_file(module.path, feature.name, content)
            print("⚙️ Generated metadata for feature " + feature.mc_path)


def generate_file(path: Path, file_name: str, content: str):
    path = os.path.join(path, ".metadata", "generated")
    os.makedirs(path, exist_ok=True)
    with open(os.path.join(path, file_name + ".yml"), "w") as f:
        f.write(content)


def callback(feature_dependencies: dict[str, 'FeatureMetadata'], module_dependencies: dict[str, 'ModuleMetadata'], tag: VisitableFunctionTag) -> bool:
    if tag.content.get('feature', False) and tag.feature.namespace != tag.namespace.split(":")[0]:
        module_path = Path(str(tag.feature.real_path).split(DataCategory.FUN_TAG.value.path_fragment)[0])
        # Add to feature dependencies
        metadata = feature_dependencies.get(tag.feature, None)
        if metadata is None:
            metadata = FeatureMetadata(name=tag.feature.name, module_path=module_path, mc_path=tag.feature.mc_path, dependencies=set())
            feature_dependencies[tag.feature] = metadata
        metadata.dependencies.add(tag)
        # Add to module dependencies
        module_name = tag.feature.namespace.split('.')[1]
        module_metadata = module_dependencies.get(module_name, None)
        if module_metadata is None:
            module_metadata = ModuleMetadata(name=module_name, path=module_path, dependencies=set(), features=set())
            module_dependencies[module_name] = module_metadata
        module_metadata.features.add(metadata)
        module_metadata.dependencies.add(tag)
    return False


@dataclass
class FeatureMetadata:
    name: str
    module_path: Path
    mc_path: str
    dependencies: set[VisitableFunctionTag]

    def __hash__(self):
        return hash(self.name)

    def __eq__(self, other):
        if not isinstance(other, FeatureMetadata):
            return False
        return self.name == other.name

@dataclass
class ModuleMetadata:
    name: str
    path: Path
    dependencies: set[VisitableFunctionTag]
    features: set[FeatureMetadata]
