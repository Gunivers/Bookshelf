import shutil
import subprocess

import click

from core.definitions import ROOT_DIR


@click.group()
def docs() -> None:
    """Documentation-related commands."""


@docs.command()
@click.argument("output", required=False)
def build(output: str | None = None) -> None:
    """Build static HTML documentation."""
    sphinx = shutil.which("sphinx-build")
    if not sphinx:
        error_msg = (
            "'sphinx-build' was not found. Please install "
            "the documentation dependencies by running `pdm install -G docs`."
        )
        raise FileNotFoundError(error_msg)

    subprocess.run(
        [sphinx, ".", output if output else "_build"],
        check=True,
        cwd=ROOT_DIR / "docs",
    )


@docs.command()
@click.argument("output", required=False)
def watch(output: str | None = None) -> None:
    """Build and serve live documentation."""
    try:
        sphinx = shutil.which("sphinx-autobuild")
        if not sphinx:
            error_msg = (
                "'sphinx-autobuild' was not found. Please install "
                "the documentation dependencies by running `pdm install -G docs`."
            )
            raise FileNotFoundError(error_msg)

        subprocess.run(
            [sphinx, ".", output if output else "_build"],
            check=True,
            cwd=ROOT_DIR / "docs",
        )

    except KeyboardInterrupt:
        click.echo("\nExiting sphinx-autobuild…")
