import yaml
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
    FEATURE_TAG_NAMESPACE: str = config['feature_tag_namespace']
