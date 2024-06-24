from dataclasses import dataclass
from logger import BaseLogger, new_logger
from packtest.assets import Assets
from pathlib import Path
import definitions
import os
import platform
import re
import subprocess


@dataclass
class Runner:
    """
    Utility for setting up and running Minecraft Unit Tests.
    """
    assets: Assets

    def run(self, datapacks: Path, target: Path, logger: BaseLogger = new_logger()) -> int:
        self.assets.download(target, logger)
        (target / "world/data/command_storage_bs.dat").unlink(True)
        (target / "world/data/scoreboard.dat").unlink(True)
        create_universal_symlink(datapacks, target / "world/datapacks")
        (target / "allowed_symlinks.txt").write_text(str(datapacks))

        logger.step("🧪 Running test server…")
        process = subprocess.Popen(
            "java -Xmx2G -Dpacktest.auto -Dpacktest.auto.annotations -jar server.jar nogui",
            stdout=subprocess.PIPE,
            universal_newlines=True,
            shell=True,
            cwd=target,
        )

        log_parsed_stdout(process, logger)
        return process.wait()


def create_universal_symlink(src: Path, dst: Path) -> None:
    if not dst.exists():
        dst.parent.mkdir(parents=True, exist_ok=True)
        if platform.system() != 'Windows':
            return os.symlink(src, dst, target_is_directory=True)
        subprocess.check_call(['mklink', '/J', str(dst), str(src)], shell=True)


def log_parsed_stdout(process: subprocess.Popen, logger: BaseLogger) -> None:
    for line in iter(process.stdout.readline, ""):
        if match := re.search(r"Running test batch '(?P<name>.*?):0' \((?P<count>.*?) tests\)", line):
            logger.print("Test '{name}' module ({count} tests)".format(**match.groupdict()))
        elif match := re.search(r"::error title=Test (?P<name>.*?) failed on line (?P<line>.*?)!::(?P<message>.*)", line):
            args = match.groupdict()
            logger.error({
                "title": f"Test '{args.get("name")}' failed!",
                "file": resolve_test_path(args.get("name")),
                "line": args.get("line"),
                "message": args.get("message"),
            })
    logger.done()


def resolve_test_path(name: str) -> Path|None:
    pos = name.rfind('.', 0, name.find('/'))
    for lib in definitions.BOOKSHELF_LIBS:
        path = definitions.DATAPACKS_PATH / lib / "data" / name[:pos] / "test" / (name[pos+1:] + ".mcfunction")
        if path.exists():
            return path
