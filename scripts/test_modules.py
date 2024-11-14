from .log import step
from .packtest import Assets, Runner
from .utils import ROOT_DIR, load_json
from beet import Project, ProjectConfig
from pathlib import Path
from tempfile import TemporaryDirectory


def main():
    """
    Main entry point for building and running tests.
    """
    data = load_json('module.json')
    mc_version = data['meta']['minecraft_versions'][-1]

    with TemporaryDirectory(prefix='mcbs-') as tmpdir:
        with step('🔨 Building project…'):
            config = ProjectConfig(
                extend='module.json',
                broadcast='modules/*',
                require=['scripts.plugins.include_test'],
                output=Path(tmpdir) / 'world/datapacks',
            )
            Project(config.resolve(ROOT_DIR)).build()

        runner = Runner(Assets(mc_version))
        code = runner.run(Path(tmpdir))

    exit(code)
