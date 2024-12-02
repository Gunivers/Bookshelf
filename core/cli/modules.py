import click
import time
from beet import Project, ProjectConfig, PackConfig
from beet.toolchain.cli import error_handler
from core.cli.meta import check_modules, check_features
from core.common.logger import log_step
from core.common.helpers import render_template
from core.common.packtest import Assets, Runner
from core.definitions import ROOT_DIR, MODULES_DIR, MINECRAFT_VERSIONS
from pathlib import Path
from tempfile import TemporaryDirectory
from typing import Optional


@click.group()
def modules():
    """
    Modules-related commands.
    """
    pass


@modules.command()
def check():
    """
    Check modules for conventions.
    """
    success = check_headers()
    success &= check_modules()
    success &= check_features()
    exit(not success)


@modules.command()
def release():
    """
    Build zipped modules for a release.
    """
    with log_step('🔨 Building project…'):
        pack_config = PackConfig(
            compression='bzip2',
            compression_level=9,
            zipped=True,
        )
        create_project(create_config(
            data_pack=pack_config,
            resource_pack=pack_config,
            output=ROOT_DIR / 'release',
            meta={'autosave':{'link':False}},
        )).build()


@modules.command()
@click.argument('modules', nargs=-1)
@click.option(
    "-l",
    "--link",
    metavar="WORLD",
    help="Link the project to a specified Minecraft world.",
)
@click.option(
    "-i",
    "--instance",
    metavar="DIRECTORY",
    help="Specify the .minecraft directory instance.",
)
def build(modules: tuple[str, ...], link: Optional[str], instance: Optional[str]):
    """
    Build the specified modules.
    """
    with log_step('🔨 Building project…'):
        project = create_project(create_config(
            modules,
            require=['core.plugins.packtest'],
            output=ROOT_DIR / 'build',
        ))
        project.link(world=link, minecraft=instance)
        project.build()


@modules.command()
@click.argument('modules', nargs=-1)
def test(modules: tuple[str, ...]):
    """
    Build and test the specified modules.
    """
    with TemporaryDirectory(prefix='mcbs-') as tmpdir:
        with log_step('🔨 Building project…'):
            create_project(create_config(
                modules,
                require=['core.plugins.packtest'],
                output=Path(tmpdir) / 'world/datapacks',
                meta={'autosave':{'link':False}},
            )).build()
        runner = Runner(Assets(MINECRAFT_VERSIONS[-1]))
        code = runner.run(Path(tmpdir))
    exit(code)


@modules.command()
@click.argument('modules', nargs=-1)
@click.option(
    "-l",
    "--link",
    metavar="WORLD",
    help="Link the project to a Minecraft world.",
)
@click.option(
    "-i",
    "--instance",
    metavar="DIRECTORY",
    help="Specify the .minecraft directory instance.",
)
def watch(modules: tuple[str, ...], link: Optional[str], instance: Optional[str]):
    """
    Watch for changes in specified modules and rebuild them.
    """
    with log_step('🔨 Watching project…') as logger:
        config = create_config(
            modules,
            require=['core.plugins.packtest'],
            output=ROOT_DIR / 'build',
        )
        project = create_project(config)
        project.link(world=link, minecraft=instance)

        for changes in project.watch(0.5):
            filename, action = next(iter(changes.items()))
            msg = (
                f'{action.capitalize()} "{filename}"'
                if changes == {filename: action}
                else f"{len(changes)} changes detected"
            )
            logger.info(f"{click.style(time.strftime("%H:%M:%S"), fg="green", bold=True)} {msg}")
            with error_handler(format_padding=1):
                project.resolved_config = config.resolve(ROOT_DIR)
                project.build()
            logger.info(f"{click.style(time.strftime("%H:%M:%S"), fg="green", bold=True)} Finished build!")


def create_config(modules: tuple[str, ...] = None, **kwargs) -> ProjectConfig:
    modules = modules if modules else ('*',)
    return ProjectConfig(
        extend='module.json',
        broadcast=[f'modules/{mod}' for mod in modules],
        **kwargs
    )


def create_project(config: ProjectConfig) -> Project:
    return Project(config.resolve(ROOT_DIR))


def check_headers() -> bool:
    template = render_template(ROOT_DIR / 'core/templates/header.jinja')

    with log_step('⏳ Checking function file headers…') as logger:
        for file_path in MODULES_DIR.rglob('*.mcfunction'):
            lines = file_path.read_text('utf-8').splitlines()[:len(template.splitlines())]
            header = '\n'.join(lines).strip()

            if header != template.strip():
                relative_path = file_path.relative_to(ROOT_DIR)
                logger.error(f'Found invalid header in file "{relative_path}"', extra={
                    'title': 'Missing header',
                    'file': relative_path,
                })

    return not logger.errors
