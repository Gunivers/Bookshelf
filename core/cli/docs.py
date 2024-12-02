import click
import subprocess
from core.definitions import ROOT_DIR
from typing import Optional


@click.group()
def docs():
    """
    Documentation related commands.
    """
    pass


@docs.command()
@click.argument('output', required=False)
def build(output: Optional[str] = None):
    """
    Build static HTML documentation.
    """
    subprocess.check_call(['sphinx-build', '.', output if output else '_build'], cwd=ROOT_DIR / 'docs')


@docs.command()
@click.argument('output', required=False)
def watch(output: Optional[str] = None):
    """
    Build and serve live documentation.
    """
    try:
        subprocess.check_call(['sphinx-autobuild', '.', output if output else '_build'], cwd=ROOT_DIR / 'docs')
    except KeyboardInterrupt:
        print("\nExiting sphinx-autobuild...")
