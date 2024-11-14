import re
import subprocess
from ..log import StepContext, step
from .assets import Assets
from dataclasses import dataclass
from pathlib import Path


@dataclass
class Runner:
    """
    Utility for setting up and running Minecraft Unit Tests.
    """
    assets: Assets

    def run(self, rundir: Path) -> int:
        self.assets.download(rundir)
        with step('🧪 Running test server…') as logger:
            try:
                return self._handle_process(subprocess.Popen(
                    'java -Xmx2G -Dpacktest.auto -Dpacktest.auto.annotations -jar server.jar nogui',
                    encoding='utf-8',
                    errors='replace',
                    stdout=subprocess.PIPE,
                    universal_newlines=True,
                    cwd=rundir,
                    shell=True,
                    text=True,
                ), logger)
            except Exception as e:
                logger.error(f'Failed to start the test server: {e}')
                return 1

    def _handle_process(self, process: subprocess.Popen, logger: StepContext) -> int:
        for line in iter(process.stdout.readline, ''):
            if match := self._parse_packtest_error(line):
                name = match['name']
                i = name.rfind('.', 0, name.find('/'))
                logger.error(match['message'], extra={
                    'title': f'Test "{name}" failed',
                    'file': f'modules/{name[:i]}/data/{name[:i]}/test/{name[i+1:]}.mcfunction',
                    'line': match['line'],
                })
            elif match := self._parse_any_error(line):
                logger.error(match['message'], extra={'title': match['title']})
            elif match := self._parse_test_batch(line):
                logger.debug(f'Test "{match["name"]}" module ({match["count"]} tests)')
        return process.wait()

    def _parse_any_error(self, line: str) -> dict | None:
        match = re.search(r"::error title=(?P<title>.*?)::(?P<message>.*)", line)
        return match.groupdict() if match else None

    def _parse_packtest_error(self, line: str) -> dict | None:
        match = re.search(r"::error title=Test (?P<name>.*?) failed on line (?P<line>.*?)!::(?P<message>.*)", line)
        return match.groupdict() if match else None

    def _parse_test_batch(self, line: str) -> dict | None:
        match = re.search(r"Running test batch '(?P<name>.*?):0' \((?P<count>.*?) tests\)", line)
        return match.groupdict() if match else None
