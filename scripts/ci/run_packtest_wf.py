import definitions
from packtest import Assets, Runner

runner = Runner(Assets(definitions.MC_VERSION))
with runner.run(definitions.DATAPACKS_PATH, definitions.ROOT_DIR) as process:
    for line in iter(process.stdout.readline, b''):
        print(line, end='')
    exit(process.wait())
