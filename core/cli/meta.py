import click
import json
import os
import subprocess
from core.common.logger import log_step
from core.common.metadata import build_manifest, get_feature_meta, get_module_meta
from core.definitions import GITHUB_REPO, META_MANIFEST, META_VERSIONS, MINECRAFT_VERSIONS, MODULES_DIR, ROOT_DIR, VERSION


@click.group()
def meta():
    """
    Metadata-related commands.
    """
    pass


@meta.command()
def check():
    """
    Check modules metadata files.
    """
    success = check_modules()
    success &= check_features()
    exit(not success)


@meta.command()
def update():
    """
    Update and commit metadata changes.
    """
    if not update_manifest():
        exit(1)

    if os.getenv('GITHUB_OUTPUT'):
        if update_versions():
            with open(os.getenv('GITHUB_OUTPUT'), 'a') as output:
                output.write(f'release_tag=v{VERSION}\n')
                output.write(f'release_name=v{VERSION} - MC {', '.join(MINECRAFT_VERSIONS)}\n')
        subprocess.check_call(['git', 'add', META_MANIFEST, META_VERSIONS], cwd=ROOT_DIR)
        subprocess.check_call(['git', 'commit', '-m', '🔖 Update metadata files'], cwd=ROOT_DIR)
        subprocess.check_call(['git', 'push'], cwd=ROOT_DIR)


def check_modules() -> bool:
    with log_step('⏳ Checking module metadata files…') as logger:
        for module in MODULES_DIR.iterdir():
            get_module_meta(module / 'module.json', logger)
    return not logger.errors


def check_features() -> bool:
    with log_step('⏳ Checking feature metadata files…') as logger:
        for feature in MODULES_DIR.rglob('*.json'):
            get_feature_meta(feature, logger)
    return not logger.errors


def update_manifest() -> bool:
    with log_step('⚙️ Generating manifest file…') as logger:
        if manifest := build_manifest(logger):
            with open(ROOT_DIR / META_MANIFEST, 'w', newline='\n') as file:
                json.dump(manifest, file, indent=2)
    return not logger.errors


def update_versions() -> bool:
    with log_step('⚙️ Generating versions file…') as logger:
        versions =  json.loads((ROOT_DIR / META_VERSIONS).read_text('utf-8'))
        if any(entry['version'] == VERSION for entry in versions):
            logger.debug(f'Version {VERSION} already exists. No update needed.')
            return False

        with open(ROOT_DIR / META_VERSIONS, 'w', newline='\n') as file:
            json.dump([{
                'version': VERSION,
                'minecraft_versions': MINECRAFT_VERSIONS,
                'manifest': f'https://raw.githubusercontent.com/{GITHUB_REPO}/refs/tags/v{VERSION}/{META_MANIFEST}'
            }, *versions], file, indent=2)
    return True
