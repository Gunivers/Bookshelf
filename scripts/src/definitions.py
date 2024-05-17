import os
import yaml
from mcunit import MCUnit
from pathlib import Path


ROOT_DIR: Path = Path(__file__).parent.parent.parent.resolve()

with open(ROOT_DIR / ".env.yml", 'r') as file:
    config = yaml.safe_load(file)
    MC_VERSION = config['mc_version']
    ASSETS_PATH: Path = ROOT_DIR / config['assets_path']
    BUILD_PATH: Path = ROOT_DIR / config['build_path']
    DATAPACKS_PATH: Path = ROOT_DIR / config['datapacks_path']
    WORLD_PATH: Path = ROOT_DIR / config['world_path']
    BOOKSHELF_LIBS: list[str] = config['bookshelf_libs']
    METADATA_FOLDER: str = config['metadata_folder']
    DOC_URL: str = config['doc_url']


if __name__ == "__main__":
    mcunit = MCUnit(MC_VERSION)
    if env_file := os.getenv('GITHUB_ENV'):
        with open(env_file, "a") as file:
            file.write(f"MC_VERSION={MC_VERSION}\n")
            file.write(f"WORLD_PATH={WORLD_PATH}\n")
            file.write(f"ASSETS_PATH={ASSETS_PATH}\n")
            file.write(f"BUILD_PATH={BUILD_PATH}\n")
            file.write(f"DATAPACKS_PATH={DATAPACKS_PATH}\n")
            file.write(f"TEST_PACKTEST={mcunit.packtest_url}\n")
            file.write(f"TEST_FABRIC_API={mcunit.fabric_api_url}\n")
            file.write(f"TEST_FABRIC_SERVER={mcunit.fabric_server_url}\n")
