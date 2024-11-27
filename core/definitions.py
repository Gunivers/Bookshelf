from pathlib import Path
from os import listdir


VERSION = "2.1.1"
MINECRAFT_VERSIONS = ["1.20.5", "1.21.3"]

DOC_URL = 'https://docs.mcbookshelf.dev/'
GITHUB_REPO = 'mcbookshelf/Bookshelf'
META_MANIFEST = 'meta/manifest.json'
META_VERSIONS = 'meta/versions.json'

ROOT_DIR = Path(__file__).resolve().parents[1]
MODULES_DIR = ROOT_DIR / 'modules'

MODULES = [mod for mod in listdir(MODULES_DIR) if (MODULES_DIR / mod).is_dir()]
