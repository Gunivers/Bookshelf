from beet import Project, ProjectConfig
from core.common.logger import log_step
from core.common.packtest import Assets, Runner
from core.definitions import ROOT_DIR, MINECRAFT_VERSIONS
from pathlib import Path
from tempfile import TemporaryDirectory


def main():
    """
    Main entry point for building and running tests.
    """
    with TemporaryDirectory(prefix='mcbs-') as tmpdir:
        with log_step('🔨 Building project…'):
            config = ProjectConfig(
                extend='module.json',
                broadcast='modules/*',
                require=['core.plugins.packtest'],
                output=Path(tmpdir) / 'world/datapacks',
            )
            Project(config.resolve(ROOT_DIR)).build()

        runner = Runner(Assets(MINECRAFT_VERSIONS[-1]))
        code = runner.run(Path(tmpdir))

    exit(code)
