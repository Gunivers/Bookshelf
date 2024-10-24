from dataclasses import dataclass
from logger import BaseLogger, new_logger
from packtest.assets import Assets
from pathlib import Path
import definitions
import os
import platform
import re
import shutil
import subprocess


@dataclass
class Runner:
    """
    Utility for setting up and running Minecraft Unit Tests.
    """
    assets: Assets

    def run(self, datapacks: Path, target: Path, logger: BaseLogger = new_logger()) -> int:
        self.assets.download(target, logger)
        shutil.rmtree(target / "world/data", ignore_errors=True)
        shutil.rmtree(target / "world/entities", ignore_errors=True)
        shutil.rmtree(target / "world/region", ignore_errors=True)
        create_universal_symlink(datapacks, target / "world/datapacks")
        (target / "allowed_symlinks.txt").write_text(str(datapacks))

        logger.step("🧪 Running test server…")
        process = subprocess.Popen(
            "java -Dpacktest.auto -Dpacktest.auto.annotations -Xms4096M -Xmx4096M --add-modules=jdk.incubator.vector -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -jar server.jar nogui",
            encoding='utf-8',
            errors="replace",
            stdout=subprocess.PIPE,
            universal_newlines=True,
            shell=True,
            cwd=target,
            text=True,
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
