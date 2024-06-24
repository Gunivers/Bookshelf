from packtest.assets import Assets
from packtest.runner import Runner
from pathlib import Path
import definitions
import hashlib
import tempfile

def run(mc_version: str) -> bool:
    assets = Assets(mc_version)
    runner = Runner(assets)
    tempdir = "bs-" + hashlib.sha1(assets.packtest_url.encode('utf-8')).hexdigest()

    return runner.run(definitions.DATAPACKS_PATH, Path(tempfile.gettempdir()) / tempdir)
