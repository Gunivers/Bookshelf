from dataclasses import dataclass
from functools import partial
import os
from pathlib import Path
from typing import Callable, Tuple
from check_feature_tag.process import check_feature
from colored import Fore, Style
from files_provider.files_provider import Feature, ModuleManager, Module
from function_call_getter._types import VisitableFeatureSet, VisitableFunctionTag, Visitor, VisitableFeature
import definitions
from function_call_getter.function_call_getter import FunctionCallGetter
from jinja2 import Environment, FileSystemLoader, Template

from dependencies.metadata_helper import compute_metadata, FeatureMetadata, ModuleMetadata
from dependencies.check_module_metadata_file import check_module


@dataclass
class UpdateDTO:
    date: str
    version: str


def generate(module_manager: ModuleManager):
    print(f'🧩 The following modules will be analyzed:{Fore.dark_gray}')
    print("\n".join(["    " + str(module.path.relative_to(definitions.ROOT_DIR)) for module in module_manager.get()]) + Style.reset)


    features: list[Feature] = module_manager.get_all_features()
    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(features)
    print(f"📦 Found {len(feature_set.features)} features:{Fore.dark_gray}")
    print("\n".join(["    " + tag.mc_path for tag in feature_set.features]) + Style.reset)

    print("⏳ Generating their metadata file…")

    errors = compute(feature_set, generate_file)

    if errors:
        print(f"❌ Done with errors.")
    else:
        print(f"✅ Done!")


def compute(feature_set: VisitableFeatureSet, result_callback: Callable[[Path, str], bool]) -> bool:
    """
        Compute the metadata files for the modules and features of the given module manager and feature set.
        Each time a module/feature is computed, the result_callback is called with the location to store the file and the metadata in a YAML format.
    """
    module_dependencies: dict[str, ModuleMetadata] = {}
    feature_dependencies: dict[str, FeatureMetadata] = {}
    visitor = Visitor([VisitableFunctionTag, VisitableFeature], partial(compute_metadata, feature_dependencies, module_dependencies))
    visitor.visit(feature_set)

    env = Environment(loader=FileSystemLoader(os.path.join(definitions.ROOT_DIR, "scripts", "src", "dependencies", "templates")))

    errors = False
    for module in module_dependencies.values():
        params, err = compute_module_metadata(module, env, result_callback)
        errors = errors or err
        if not err and params:
            feature_params: list[dict] = []
            in_module_errors = False
            for feature in module.features:
                result = compute_feature_metadata(feature, params["weak_dependencies"], env)
                if result:
                    feature_params.append(result)
                else:
                    in_module_errors = True
            if not in_module_errors:
                errors | result_callback(compute_path(module.path, "features"), generate_yaml({"features": feature_params}, env, "features.jinja"))
            else:
                print(f"    {Fore.red}Errors when computing metadata for the features of the module '{module.namespace}'. The features metadata for this module has not been processed.{Style.reset}")
        else:
            errors = True
            print(f"    {Fore.red}Errors when computing metadata for the module '{module.namespace}'. The module metadata and its features metadata have not been processed.{Style.reset}")

    return errors


def compute_module_metadata(module: ModuleMetadata, env: Environment, result_callback: Callable[[Path, str], bool]) -> Tuple[dict, bool]:
    print(f"    {Fore.dark_gray}Computing metadata for module " + module.namespace + f".{Style.reset}")
    result = check_module(Module(path=module.path, namespace=module.namespace))
    if not isinstance(result, list):
        documentation = result.get("documentation", None)
        description = result.get("description", None)
        display_name = result.get("display_name", None)
        name = module.namespace
        dependencies = [tag.mc_path for tag in module.dependencies]
        dependencies, weak_dependencies = compute_dependencies(module.dependencies, result.get("weak_dependencies", []), module.name, "module", True)
        features = [feature.name for feature in module.features]
        params = {
            "documentation": documentation,
            "description": description,
            "display_name": display_name,
            "name": name,
            "dependencies": dependencies,
            "weak_dependencies":weak_dependencies,
            "features": features
        }
        result = result_callback(compute_path(module.path, "module"), generate_yaml(params, env, "module.jinja"))
        return params, result
    else:
        print("\n".join(["    " + error for error in result]))
        return None, True


def compute_feature_metadata(feature: FeatureMetadata, weak_dependencies: list[str], env: Environment) -> dict | bool:
    print(f"    {Fore.dark_gray}Computing feature for module " + feature.mc_path + f".{Style.reset}")
    result = check_feature(feature.this)
    if not isinstance(result, list):
        documentation = result.get("documentation", None)
        # description = result.get("description", None)
        # display_name = result.get("display_name", None)
        name = feature.name
        dependencies = [tag.mc_path for tag in feature.dependencies]
        dependencies, weak_dependencies = compute_dependencies(feature.dependencies, weak_dependencies, feature.name, "module", False)
        authors = result.get("authors", None)
        contributors = result.get("contributors", None)
        created: UpdateDTO = UpdateDTO(date=result.get("created").get("date"), version=result.get("created").get("minecraft_version"))
        updated: UpdateDTO = UpdateDTO(date=result.get("updated").get("date"), version=result.get("updated").get("minecraft_version"))
        params = {
            "documentation": documentation,
            # "description": description,
            # "display_name": display_name,
            "name": name,
            "dependencies": dependencies,
            "weak_dependencies": weak_dependencies,
            "authors": authors,
            "contributors": contributors,
            "created": created,
            "updated": updated
        }
        return params
    else:
        print("\n".join(["    " + error for error in result]))
        return False


def compute_dependencies(dependencies: set[VisitableFunctionTag], weak_dependencies: set[str], name: str, type: str, check_non_use: bool) -> Tuple[set[str], set[str]]:
    if not dependencies:
        return None, weak_dependencies
    if not weak_dependencies:
        return [dependency.mc_path for dependency in dependencies], None

    weak_dependencies = set(weak_dependencies)
    used_weak_dependencies = set()
    for tag in list(dependencies):
        if tag.namespace in weak_dependencies:
            used_weak_dependencies.add(tag.namespace)
            dependencies.remove(tag)
    diff = weak_dependencies - used_weak_dependencies
    if check_non_use and len(diff) > 0:
            print(f"    {Fore.yellow}{type.capitalize()} {name} has weak dependencies that are not used: {",".join(diff)}.{Style.reset}")
    dependencies = [dependency.mc_path for dependency in dependencies]
    weak_dependencies = weak_dependencies
    return dependencies or None, weak_dependencies or None


def generate_yaml(params: any, env: Environment, template: str) -> str:
    template = env.get_template(template)
    return template.render(params)

def compute_path(path: Path, filename: str) -> Path:
    return Path(os.path.join(path, ".metadata", "generated", filename + '.yml'))


def generate_file(path: Path, content: str):
    """
    Generate a file at the given path with the given content.
    path: The path of the file to generate.
    content: The content of the file.
    """
    os.makedirs(path.parent, exist_ok=True)
    with open(os.path.join(path), "w") as f:
        f.write(content)
    return False
