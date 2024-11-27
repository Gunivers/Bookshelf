import json
import os
from core.common.logger import log_step
from core.common.metadata import build_manifest
from core.definitions import GITHUB_REPO, META_MANIFEST, META_VERSIONS, MINECRAFT_VERSIONS, ROOT_DIR, VERSION


def main():
    """
    Main entry point for generating metadata files.
    """
    with log_step('⚙️ Generating manifest file…') as logger:
        if manifest := build_manifest(logger):
            with open(ROOT_DIR / META_MANIFEST, 'w') as file:
                json.dump(manifest, file, indent=2)

    if not manifest:
        exit(logger.errors)

    with log_step('⚙️ Generating versions file…') as logger:
        versions =  json.loads((ROOT_DIR / META_MANIFEST).read_text('utf-8'))
        if any(entry['version'] == VERSION for entry in versions):
            return logger.debug(f'Version {VERSION} already exists. No update needed.')

        if os.getenv('GITHUB_OUTPUT'):
            with open(os.getenv('GITHUB_OUTPUT'), 'a') as output:
                output.write(f'release_tag=v{VERSION}\n')
                output.write(f'release_name=v{VERSION} - MC {', '.join(MINECRAFT_VERSIONS)}\n')

        with open(ROOT_DIR / META_VERSIONS, 'w') as file:
            json.dump([{
                'version': VERSION,
                'minecraft_versions': MINECRAFT_VERSIONS,
                'manifest': f'https://raw.githubusercontent.com/{GITHUB_REPO}/refs/tags/v{VERSION}/{META_MANIFEST}'
            }, *versions], file, indent=2)
