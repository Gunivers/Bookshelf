import argparse
import hashlib
import os
import platform
import re
import requests
import subprocess
import tempfile

from pathlib import Path


def create_symlink(src: Path, dest: Path):
    if platform.system() == 'Windows':
        subprocess.check_call(['mklink', '/J', str(dest), str(src)], shell=True)
    else:
        os.symlink(src, dest, target_is_directory=True)


def clear_directory(dir: Path):
    if not dir.is_dir():
        return
    for entry in dir.iterdir():
        try:
            entry.unlink()
        except OSError:
            clear_directory(entry)
    dir.rmdir()


class MCUnit():
    """
    Utility for setting up and running Minecraft Unit Tests.
    """

    def __init__(self, mc_version: str) -> None:
        """
        Initializes MCUnit with the specified Minecraft version.
        """
        self.mc_version = mc_version
        self.fabric_server_url = self.get_fabric_url(mc_version)
        self.fabric_api_url = self.get_modrinth_url("P7dR8mSH", mc_version)
        self.packtest_url = self.get_modrinth_url("XsKUhp45", mc_version)

    def get_fabric_url(self, mc_version: str) -> str:
        response = requests.get(f"https://meta.fabricmc.net/v2/versions/loader/{mc_version}")
        response.raise_for_status()
        versions = response.json()
        return f'https://meta.fabricmc.net/v2/versions/loader/{mc_version}/{versions[0]["loader"]["version"]}/1.0.1/server/jar'

    def get_modrinth_url(self, project_id: str, mc_version: str) -> str:
        response = requests.get(f"https://api.modrinth.com/v2/project/{project_id}/version")
        response.raise_for_status()
        versions = response.json()
        if versions := [version for version in versions if mc_version in version["game_versions"]]:
            return versions[0]["files"][0]["url"]
        raise RuntimeError(f"Could not find packtest version for the given Minecraft version: {mc_version}")

    def download_file(self, url: str, filepath: Path) -> None:
        if not filepath.exists():
            print(f"\033[93m🚀 Downloading\033[0m [{url}]")
            response = requests.get(url)
            response.raise_for_status()
            filepath.parent.mkdir(parents=True, exist_ok=True)
            filepath.write_bytes(response.content)

    def run(self, datapacks_path: str) -> None:
        """
        Sets up and runs the test server.
        """
        dirname = "mcunit-" + hashlib.sha1(self.packtest_url.encode('utf-8')).hexdigest()
        tmpdir = Path(tempfile.gettempdir()) / dirname
        tmpdir.mkdir(parents=True, exist_ok=True)

        print("📦 Setting up assets")
        for url, filepath in [
            (self.fabric_server_url, tmpdir / "server.jar"),
            (self.fabric_api_url, tmpdir / "mods/fabric-api.jar"),
            (self.packtest_url, tmpdir / "mods/packtest.jar"),
        ]:
            self.download_file(url, filepath)

        print("🔗 Linking datapacks")
        clear_directory(tmpdir / "world")
        datapacks_src_path = Path(datapacks_path).resolve()
        datapacks_dst_path = tmpdir / "world/datapacks"
        datapacks_dst_path.parent.mkdir(parents=True, exist_ok=True)
        create_symlink(datapacks_src_path, datapacks_dst_path)
        (tmpdir / "allowed_symlinks.txt").write_text(str(datapacks_src_path))

        print("🧪 Running test server")
        with subprocess.Popen(
            "java -Xmx2G -Dpacktest.auto -Dpacktest.auto.annotations -jar server.jar nogui",
            stdout=subprocess.PIPE,
            universal_newlines=True,
            shell=True,
            cwd=tmpdir,
        ) as process:
            for log in iter(process.stdout.readline, ""):
                if match := re.search(r"::error title=(.*?)::(.*)", log):
                    title, description = match.groups()
                    print(f"\033[1m\033[91m ✘ {title}\033[0m: {description}")

            if err_count := process.wait():
                print(f"💥 {err_count} required tests failed :(")
            else:
                print("✅ All required tests passed :)")


def run(datapacks_path: str, mc_version: str):
    MCUnit(mc_version).run(datapacks_path)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run packtest automated test server")
    parser.add_argument("--source", type=str, required=True, help="set the datapacks path")
    parser.add_argument("--version", type=str, required=True, help="set the minecraft version to use")
    args = parser.parse_args()
    run(args.source, args.version)
