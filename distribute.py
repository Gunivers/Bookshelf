import zipfile
import glob
import os
import argparse
import sys

DATAPACK_PATTERNS = [
    "**/*.mcfunction",
    "**/*.mcmeta",
    "**/*.png",
    "**/*.json",
    "**/*.txt", # comments
    "**/*.nbt", # structure files
]
WORLD_PATTERNS = [
    "**/*.mca", # region files
]

def get_files(
    base_folder: str,
    path_list: list[str],
    patterns: list[str],
) -> list[str]:
    files = []
    folders = []

    for path in path_list:
        if os.path.isfile(os.path.join(base_folder, path)):
            files.append(path)
        elif os.path.isdir(os.path.join(base_folder, path)):
            folders.append(path)

    for pattern in patterns:
        for folder in folders:
            files.extend(
                [
                    os.path.join(folder, file)
                    for file in glob.glob(
                        pattern,
                        root_dir=os.path.join(base_folder, folder),
                        recursive=True,
                    )
                ]
            )

    return files

def get_world_files() -> list[str]:
    return get_files(
        ".",
        [
            "datapacks",
            "region",
            "icon.png",
            "level.dat",
            "LICENSE.md",
            "README.md",
        ],
        DATAPACK_PATTERNS + WORLD_PATTERNS,
    )

def get_datapack_files() -> list[str]:
    return get_files(
        "datapacks/Bookshelf",
        [
            "data",
            "icon.png",
            "pack.mcmeta",
        ],
        DATAPACK_PATTERNS,
    )

def get_core_datapack_files() -> list[str]:
    return get_files(
        "datapacks/Bookshelf",
        [
            "data/bs.core",
            "data/minecraft",
            "icon.png",
            "pack.mcmeta",
        ],
        DATAPACK_PATTERNS,
    )

def get_module_datapack_files(module_name: str) -> list[str]:
    return get_files(
            "datapacks/Bookshelf",
            [
                f"data/{module_name}",
                "icon.png",
                "pack.mcmeta",
            ],
            DATAPACK_PATTERNS,
        )

def create_archive(filename: str, base_folder: str, files: list[str]):
    archive = zipfile.ZipFile(
        filename,
        mode="w",
        compression=zipfile.ZIP_DEFLATED,
    )

    for file in files:
        archive.write(
            filename=os.path.join(base_folder, file),
            arcname=file,
        )

def list_modules() -> list[str]:
    modules = os.listdir("datapacks/Bookshelf/data")
    modules.remove("bs.core")
    modules.remove("minecraft")

    return modules

def create_world_archive(filename: str = 'build/World.zip'):
    print("🏞 Creating world archive")
    create_archive(
        filename,
        ".",
        get_world_files(),
    )

def create_datapack_archive(filename: str = 'build/Bookshelf.zip'):
    print("🗄 Creating datapack archive")
    create_archive(
        filename,
        "datapacks/Bookshelf",
        get_datapack_files(),
    )

def create_core_module_archive(filename: str = 'build/Bookshelf-core.zip'):
    print("🔩 Creating core module archive")
    create_archive(
        filename,
        "datapacks/Bookshelf",
        get_core_datapack_files(),
    )

def create_modules_archive(filename: str = "build/Bookshelf-{}.zip"):
    for module in list_modules():
        print(f"🧩 Creating archive for module {module}")
        create_archive(
            filename.format(module[3:] if module.startswith('bs.') else module),
            "datapacks/Bookshelf",
            get_module_datapack_files(module),
        )

if __name__ == "__main__":
    if not os.path.exists("./build"):
        os.mkdir("build")
    
    parser = argparse.ArgumentParser(
        description="Pack Bookshelf in nice zip files",
    )
    parser.add_argument(
        "-w", "--world", type=int, default=1,
        help="Export world. Set to 0 to disable.", metavar="EXPORT",
    )
    parser.add_argument(
        "-d", "--datapack", type=int, default=1,
        help="Export entire datapack. Set to 0 to disable.", metavar="EXPORT",
    )
    parser.add_argument(
        "-c", "--core", type=int, default=1,
        help="Export core module. Set to 0 to disable.", metavar="EXPORT",
    )
    parser.add_argument(
        "-m", "--modules", type=int, default=1,
        help="Export every module. Set to 0 to disable.", metavar="EXPORT",
    )
    parser.add_argument(
        "-v", "--version", type=str, required=False,
        help="Specify the lib version in zip filename",
    )

    args = parser.parse_args()

    if args.world:
        create_world_archive(
            f'build/World{"-" + args.version if args.version else ""}.zip',
        )
    if args.datapack:
        create_datapack_archive(
            f'build/Bookshelf{"-" + args.version if args.version else ""}.zip',
        )
    if args.core:
        create_core_module_archive(
            f'build/Bookshelf-core{"-" + args.version if args.version else ""}.zip',
        )
    if args.modules:
        create_modules_archive(
            'build/Bookshelf-{}'+f'{"-" + args.version if args.version else ""}.zip',
        )
