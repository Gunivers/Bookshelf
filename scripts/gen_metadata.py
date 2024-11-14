import os
from .log import step
from .metadata import build_manifest
from .utils import load_json, write_json


def main():
    """
    Main entry point for generating metadata files.
    """
    with step('⚙️ Generating "meta/manifest.json" file…') as logger:
        if manifest := build_manifest(logger):
            write_json('meta/manifest.json', manifest)

    if not manifest:
        exit(logger.errors)

    if not os.getenv('GITHUB_WORKSPACE'):
        return

    with step('⚙️ Generating "meta/versions.json" file…') as logger:
        data = load_json('module.json')
        version = data['meta']['version']
        mc_versions = data['meta']['minecraft_versions']

        versions = load_json('meta/versions.json')
        if any(entry['version'] == version for entry in versions):
            logger.debug(f'Version {version} already exists in "versions.json". No update needed.')
            return

        with open(os.getenv('GITHUB_OUTPUT'), 'a') as output:
            output.write(f'release_tag=v{version}\n')
            output.write(f'release_name=v{version} - MC {', '.join(mc_versions)}\n')

        write_json('meta/versions.json', [{
            'version': version,
            'minecraft_versions': mc_versions,
            'manifest': f'https://raw.githubusercontent.com/Gunivers/Bookshelf/refs/tags/v{version}/meta/manifest.json'
        }, *versions])
