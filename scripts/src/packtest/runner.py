import os
import platform
import subprocess

from dataclasses import dataclass
from packtest.assets import Assets
from pathlib import Path

@dataclass
class Runner:
    """
    Utility for setting up and running Minecraft Unit Tests.
    """
    assets: Assets

    def run(self, datapacks: Path, target: Path) -> subprocess.Popen:
        self.assets.download(target)
        (target / "world/data/command_storage_bs.dat").unlink(True)
        (target / "world/data/scoreboard.dat").unlink(True)
        create_universal_symlink(datapacks, target / "world/datapacks")
        (target / "allowed_symlinks.txt").write_text(str(datapacks))

        print("🧪 Running test server")
        return subprocess.Popen(
            "java -Xmx2G -Dpacktest.auto -Dpacktest.auto.annotations -jar server.jar nogui",
            stdout=subprocess.PIPE,
            universal_newlines=True,
            shell=True,
            cwd=target,
        )


def create_universal_symlink(src: Path, dst: Path):
    if not dst.exists():
        dst.parent.mkdir(parents=True, exist_ok=True)
        if platform.system() != 'Windows':
            return os.symlink(src, dst, target_is_directory=True)
        subprocess.check_call(['mklink', '/J', str(dst), str(src)], shell=True)
