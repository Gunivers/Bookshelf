from functools import partial
from function_call_getter import FunctionCallGetter
from function_call_getter._types import (VisitableFeatureSet, AbstractFunction, Visitor)

def process(workspace: str, filepaths: list[str]):

    print('📄 The following files will be reviewed:')
    print("\n".join([ "  📄 " + filepath for filepath in filepaths]))

    getter = FunctionCallGetter()


    feature_set: VisitableFeatureSet = getter.build_function_call_tree(workspace, filepaths)
    print(f"📦 Found {len(feature_set.features)} features:")
    for feature in feature_set.features:
        print(f"  📦 {feature.mc_path}")
    # Store feature_name → dependency modules
    external_call: dict[str, set[str]] = {}

    visitor = Visitor([AbstractFunction], partial(callback, external_call))
    print("⏳ Finding features dependencies…")
    visitor.visit(feature_set)

    for path, namespaces in external_call.items():
        print(f"🔍 Feature '{path}' depends on: " + ", ".join(namespaces) + ".")

def callback(external_call: dict[str, set[str]], function: AbstractFunction) -> bool:
    if function.namespace != function.feature.namespace:
        if function.feature.path not in external_call:
            external_call[function.feature.path] = set()
        external_call[function.feature.path].add(function.namespace)
    return False
