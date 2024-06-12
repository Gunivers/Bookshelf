import hashlib
import tempfile
import re

from pathlib import Path
from packtest.assets import Assets
from packtest.runner import Runner

def run(mc_version: str, datapacks_path: str):
    assets = Assets(mc_version)
    runner = Runner(assets)
    tempdir = "bs-" + hashlib.sha1(assets.packtest_url.encode('utf-8')).hexdigest()

    with runner.run(Path(datapacks_path), Path(tempfile.gettempdir()) / tempdir) as process:
        for line in iter(process.stdout.readline, ""):
            if match := re.search(r"::error title=(.*?)::(.*)", line):
                print("\033[1m\033[91m ✘ {}\033[0m: {}".format(*match.groups()))
        if err_count := process.wait():
            print(f"💥 {err_count} required tests failed :(")
        else:
            print("✅ All required tests passed :)")
