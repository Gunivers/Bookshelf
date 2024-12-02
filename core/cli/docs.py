import click
import subprocess
from core.definitions import ROOT_DIR


@click.group()
def docs():
    """
    Documentation related commands.
    """
    pass


@docs.command()
def build():
    """
    Build static HTML documentation.
    """
    subprocess.check_call(['sphinx-build', '.', '_build'], cwd=ROOT_DIR / 'docs')


@docs.command()
def watch():
    """
    Build and serve live documentation.
    """
    try:
        subprocess.check_call(['sphinx-autobuild', '.', '_build'], cwd=ROOT_DIR / 'docs')
    except KeyboardInterrupt:
        print("\nExiting sphinx-autobuild...")
