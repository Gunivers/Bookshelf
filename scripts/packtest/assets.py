import requests
from ..log import StepContext, step
from pathlib import Path


class Assets:
    """
    Utility for managing assets required to run Minecraft Unit Tests.
    """

    def __init__(self, mc_version: str) -> None:
        self.mc_version = mc_version
        self.fabric_server_url = self._get_fabric_url(mc_version)
        self.fabric_api_url = self._get_modrinth_url('fabric-api', mc_version)
        self.packtest_url = self._get_modrinth_url('packtest', mc_version)

    def download(self, out: Path):
        with step('🚀 Downloading assets…') as logger:
            for url, file_path in [
                (self.fabric_server_url, out / 'server.jar'),
                (self.fabric_api_url, out / 'mods/fabric-api.jar'),
                (self.packtest_url, out / 'mods/packtest.jar'),
            ]:
                self._download_asset(url, file_path, logger)

    def _download_asset(self, url: str, file_path: Path, logger: StepContext) -> None:
        if not file_path.exists():
            logger.debug(f'Fetching {url}')
            try:
                response = requests.get(url)
                response.raise_for_status()
                file_path.parent.mkdir(parents=True, exist_ok=True)
                file_path.write_bytes(response.content)
            except requests.RequestException as e:
                logger.error(f"Error downloading {url}: {e}")
                raise

    def _get_fabric_url(self, mc_version: str) -> str:
        response = requests.get(f'https://meta.fabricmc.net/v2/versions/loader/{mc_version}')
        response.raise_for_status()
        versions = response.json()
        return f'https://meta.fabricmc.net/v2/versions/loader/{mc_version}/{versions[0]["loader"]["version"]}/1.0.1/server/jar'

    def _get_modrinth_url(self, project_id: str, mc_version: str) -> str:
        response = requests.get(f'https://api.modrinth.com/v2/project/{project_id}/version')
        response.raise_for_status()
        versions = response.json()
        if versions := [version for version in versions if mc_version in version['game_versions']]:
            return versions[0]['files'][0]['url']
        raise RuntimeError(f'Could not find a version for {project_id} that matches the MC version: {mc_version}')
