from pathlib import Path
from colored import Fore, Style
import definitions
from dependencies.generate_metadata import compute
from files_provider.files_provider import Feature, ModuleManager
from function_call_getter.function_call_getter import FunctionCallGetter
from function_call_getter._types import VisitableFeatureSet


def check(module_manager: ModuleManager) -> bool:
    print(f'🧩 The following modules will be analyzed:{Fore.dark_gray}')
    print("\n".join(["    " + str(module.path.relative_to(definitions.ROOT_DIR)) for module in module_manager.get()]) + Style.reset)


    features: list[Feature] = module_manager.get_all_features()
    getter = FunctionCallGetter()

    feature_set: VisitableFeatureSet = getter.build_function_call_tree(features)
    print(f"📦 Found {len(feature_set.features)} features:{Fore.dark_gray}")
    print("\n".join(["    " + tag.mc_path for tag in feature_set.features]) + Style.reset)

    print("⏳ Computing their metadata file…")

    errors = compute(feature_set, comparing)

    if errors:
        print(f"❌ Done with errors.")
    else:
        print(f"✅ Done!")



def comparing(path: Path, content: str) -> bool:
    if not path.exists():
        print(f"    {Fore.red}Metadata file '{path.relative_to(definitions.ROOT_DIR)}' was not generated. Please run the generator and retry after.{Style.reset}")
        return True
    else:
        with open(path, "r") as file:
            if file.read() != content:
                print(f"    {Fore.red}Metadata file '{path.relative_to(definitions.ROOT_DIR)}' is outdated. Please run the generator and retry after.{Style.reset}")
                return True
            else:
                print(f"    {Fore.green}Metadata file '{path.relative_to(definitions.ROOT_DIR)}' is up-to-date.{Style.reset}")
    return False
