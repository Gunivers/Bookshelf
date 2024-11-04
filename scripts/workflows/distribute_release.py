import argparse
import definitions
import io
import json
import zipfile
from pathlib import Path

DATAPACK_PATTERNS = [
    "**/function/**/*.mcfunction",
    "**/*.mcmeta",
    "**/*.png",
    "**/*.json",
    "**/*.nbt",
]

def create_datapack_archive(datapack: dict, module_dirs: list[str]) -> io.BytesIO:
    data = io.BytesIO()
    with zipfile.ZipFile(data, mode="w", compression=zipfile.ZIP_DEFLATED) as archive:
        for module in module_dirs + [f"datapacks/{datapack['name']}/data/minecraft"]:
            module = definitions.ROOT_DIR / module
            basename = Path("data") / module.name

            for file in [f for p in DATAPACK_PATTERNS for f in module.rglob(p)]:
                if file.is_file():
                    archive.write(file, basename / file.relative_to(module))
        archive.write(definitions.ROOT_DIR / f"datapacks/{datapack['name']}/pack.mcmeta", "pack.mcmeta")
        archive.write(definitions.ROOT_DIR / "datapacks/Bookshelf/icon.png", "icon.png")
    data.seek(0)
    return data


def create_datapacks_archive(manifest: dict, target: Path, suffix: str = ""):
    for datapack in manifest["datapacks"]:
        print(f"📦 Creating archive for datapack {datapack['name']}")
        data = create_datapack_archive(datapack, [module["module_path"] for module in datapack["modules"]])
        with open(target / f"{datapack['name']}{suffix}.zip".lower().replace(" ", "-"), 'wb') as f:
            f.write(data.getvalue())


def create_modules_archive(manifest: dict, target: Path, suffix: str = ""):
    for datapack in manifest["datapacks"]:
        for module in datapack["modules"]:
            print(f"🧩 Creating archive for module {module['name']}")
            data = create_datapack_archive(datapack, get_dependencies(module["name"], manifest))
            with open(target / f"bs.{module['display_name']}{suffix}.zip".lower().replace(" ", "-"), 'wb') as f:
                f.write(data.getvalue())


def get_dependencies(module: str, manifest: dict) -> list[str]:
    modules = {m["name"]: {
        "dependencies": m.get("dependencies", []),
        "module_path": m["module_path"],
    } for datapack in manifest["datapacks"] for m in datapack["modules"]}

    def gather_dependencies(mod: str) -> list[str]:
        dirs = [modules[mod]["module_path"]]
        for dep in modules[mod]["dependencies"]:
            dirs.extend(gather_dependencies(dep))
        return dirs

    return list(set(gather_dependencies(module)))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Pack Bookshelf in zip files")
    parser.add_argument("-t", "--target", type=str, help="set the output path")
    parser.add_argument("-v", "--version", type=str, help="specify the lib version in zip filename")
    parser.add_argument("-d", "--datapacks", type=int, default=1, help="whether or not to export datapacks", metavar="EXPORT")
    parser.add_argument("-m", "--modules", type=int, default=1, help="whether or not to export modules", metavar="EXPORT")
    args = parser.parse_args()

    target = Path(args.target).absolute() if args.target else definitions.BUILD_PATH
    target.mkdir(parents=True, exist_ok=True)
    suffix = f"-{args.version}" if args.version else ""

    with open(definitions.GENERATED_PATH / "manifest.json") as file:
        manifest = json.load(file)
        if args.datapacks:
            create_datapacks_archive(manifest, target, suffix)
        if args.modules:
            create_modules_archive(manifest, target, suffix)
