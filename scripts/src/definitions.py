import yaml
from pathlib import Path


ROOT_DIR: Path = Path(__file__).parent.parent.parent.resolve()

with open(ROOT_DIR / ".env.yml", 'r') as file:
    config = yaml.safe_load(file)
    MC_VERSION = config['mc_version']
    DOCUMENTATION_URL: str = config['documentation_url']
    METADATA_FOLDER: str = config['metadata_folder']
    FEATURE_TAG_NAMESPACE: str = config['feature_tag_namespace']
    BUILD_PATH: Path = ROOT_DIR / config['build_path']
    DATAPACKS_PATH: Path = ROOT_DIR / config['datapacks_path']
    GENERATED_PATH: Path = ROOT_DIR / config['generated_path']
    BOOKSHELF_LIBS: list[str] = config['bookshelf_libs']
