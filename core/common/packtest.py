import re
import requests
import subprocess
from core.common.logger import StepLogger, log_step
from dataclasses import dataclass
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
        with log_step('🚀 Downloading assets…') as logger:
            for url, file_path in [
                (self.fabric_server_url, out / 'server.jar'),
                (self.fabric_api_url, out / 'mods/fabric-api.jar'),
                (self.packtest_url, out / 'mods/packtest.jar'),
            ]:
                self._download_asset(url, file_path, logger)

    def _download_asset(self, url: str, file_path: Path, logger: StepLogger) -> None:
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


@dataclass
class Runner:
    """
    Utility for setting up and running Minecraft Unit Tests.
    """
    assets: Assets

    PATTERNS = {
        'any_error': re.compile(r"::error title=(?P<title>.*?)::(?P<message>.*)"),
        'test_error': re.compile(r"::error title=Test (?P<name>.*?) failed on line (?P<line>\d+)!::(?P<message>.*)"),
        'test_batch': re.compile(r"Running test batch '(?P<name>.*?):0' \((?P<count>\d+) tests\)"),
    }

    def run(self, rundir: Path) -> int:
        self.assets.download(rundir)
        with log_step('🧪 Running test server…') as logger:
            process = subprocess.Popen(
                'java -Xmx2G -Dpacktest.auto -Dpacktest.auto.annotations -jar server.jar nogui',
                cwd=rundir,
                encoding='utf-8',
                errors='replace',
                shell=True,
                text=True,
                stdout=subprocess.PIPE,
                universal_newlines=True,
            )
            self._monitor_process(process, logger)
        return process.wait()

    def _handle_any_error(self, match: re.Match, logger: StepLogger) -> None:
        logger.error(match['message'], extra={'title': match['title']})

    def _handle_test_batch(self, match: re.Match, logger: StepLogger) -> None:
        logger.info(f'Test "{match["name"]}" module ({match["count"]} tests)')

    def _handle_test_error(self, match: re.Match, logger: StepLogger) -> None:
        name = match['name']
        i = name.rfind('.', 0, name.find('/'))
        logger.error(match['message'], extra={
            'title': f'Test "{name}" failed',
            'file': f'modules/{name[:i]}/data/{name[:i]}/test/{name[i+1:]}.mcfunction',
            'line': match['line'],
        })

    def _monitor_process(self, process: subprocess.Popen, logger: StepLogger) -> None:
        for line in iter(process.stdout.readline, ''):
            for pattern, callback in (
                (self.PATTERNS['test_error'], self._handle_test_error),
                (self.PATTERNS['test_batch'], self._handle_test_batch),
                (self.PATTERNS['any_error'], self._handle_any_error),
            ):
                if match := pattern.search(line):
                    callback(match, logger)
                    break
