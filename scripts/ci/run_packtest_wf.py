import definitions
import re

from packtest import Assets, Runner

runner = Runner(Assets(definitions.MC_VERSION))
with runner.run(definitions.DATAPACKS_PATH, definitions.ROOT_DIR) as process:
    for line in iter(process.stdout.readline, ""):
        if match := re.search(r"::error title=(.*?)::(.*)", line):
            print(line, end='')
    exit(process.wait())
