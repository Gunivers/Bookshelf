import argparse
import definitions
import glob
import itertools
import json
import os
import shutil
import zipfile

from pathlib import Path

DATAPACK_PATTERNS = [
    "**/functions/**/*.mcfunction",
    "**/*.mcmeta",
    "**/*.png",
    "**/*.json",
    "**/*.nbt", # structure files
]
WORLD_PATTERNS = [
    "**/*.mca", # region files
]

def get_files(
    base_dir: Path,
    path_list: list[str],
    patterns: list[str],
) -> set[str]:
    directories = [path for path in path_list if (base_dir / path).is_dir()]
    files = {path for path in path_list if (base_dir / path).is_file()}

    for pattern, directory in itertools.product(patterns, directories):
        for file in glob.glob(
            pattern,
            root_dir=base_dir/directory,
            recursive=True,
        ):
            files.add(f"{directory}/{file}")

    return files

def list_modules(datapack: str) -> list[str]:
    modules = os.listdir(definitions.DATAPACKS_PATH / datapack / "data")
    modules.remove("minecraft")

    return modules

def list_dependencies(datapack: str, module: str) -> list[str]:
    dependencies = [module]
    file_path = definitions.DATAPACKS_PATH / datapack / f"data/{module}/tags/functions/load.json"
    with open(file_path) as file:
        contents = json.load(file)
        for value in contents["values"]:
            if isinstance(value, dict):
                value = value.get("id")
            if not value.startswith("#"):
                continue
            module = value.split(":")[0].lstrip("#")
            dependencies.extend(list_dependencies(datapack, module))

    return dependencies

def get_world_files() -> list[str]:
    path_list = [
        "datapacks",
        "region",
        "icon.png",
        "level.dat",
        "LICENSE.md",
        "README.md",
    ]

    return get_files(definitions.WORLD_PATH, path_list, DATAPACK_PATTERNS + WORLD_PATTERNS)

def get_datapack_files(datapack: str) -> list[str]:
    path_list = ["data", "icon.png", "pack.mcmeta"]

    return get_files(definitions.DATAPACKS_PATH / datapack, path_list, DATAPACK_PATTERNS)

def get_module_files(datapack: str, module: str) -> list[str]:
    dependencies = list_dependencies(datapack, module)
    path_list = [
        "data/minecraft",
        "icon.png",
        "pack.mcmeta",
        *[f'data/{value}' for value in dependencies]
    ]

    return get_files(definitions.DATAPACKS_PATH / datapack, path_list, DATAPACK_PATTERNS)

def create_archive(filepath: Path, base_dir: Path, files: list[str]):
    archive = zipfile.ZipFile(
        filepath,
        mode="w",
        compression=zipfile.ZIP_DEFLATED,
    )

    for file in files:
        archive.write(base_dir / file, file)

def create_world_archive(target: Path, filename: str):
    print("🗺️ Creating world archive")
    create_archive(
        target / filename,
        definitions.WORLD_PATH,
        get_world_files(),
    )

def create_datapacks_archive(target: Path, filename: str):
    for datapack in ["Bookshelf", "Bookshelf Dev"]:
        print(f"📦 Creating archive for datapack {datapack}")
        create_archive(
            target / filename.format(datapack),
            definitions.DATAPACKS_PATH / datapack,
            get_datapack_files(datapack),
        )

def create_modules_archive(target: Path, filename: str):
    for datapack in ["Bookshelf", "Bookshelf Dev"]:
        for module in list_modules(datapack):
            print(f"🧩 Creating archive for module {module}")
            create_archive(
                target / filename.format(module[3:] if module.startswith('bs.') else module),
                definitions.DATAPACKS_PATH / datapack,
                get_module_files(datapack, module),
            )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Pack Bookshelf in zip files")
    parser.add_argument("-t", "--target", type=str, help="set the output path")
    parser.add_argument("-v", "--version", type=str, help="specify the lib version in zip filename")
    parser.add_argument("-d", "--datapacks", type=int, default=1, help="whether or not to export datapacks", metavar="EXPORT")
    parser.add_argument("-m", "--modules", type=int, default=1, help="whether or not to export modules", metavar="EXPORT")
    parser.add_argument("-w", "--world", type=int, default=1, help="whether or not to export the world", metavar="EXPORT")
    args = parser.parse_args()

    target = Path(args.target).absolute() if args.target else definitions.BUILD_PATH
    target.mkdir(parents=True, exist_ok=True)
    version = f" {args.version}" if args.version else ""

    if args.datapacks:
        create_datapacks_archive(target, f"{{}}{version}.zip")
    if args.modules:
        (target / "modules").mkdir(parents=True, exist_ok=True)
        create_modules_archive(target, f"modules/bs-{{}}-{version}.zip")
        shutil.make_archive(target / f"Bookshelf Modules {version}", "zip", target / "modules")
    if args.world:
        create_world_archive(target, f"Bookshelf World {version}.zip")
