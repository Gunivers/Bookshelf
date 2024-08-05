from packtest.assets import Assets
from packtest.runner import Runner
import definitions

runner = Runner(Assets(definitions.MC_VERSION))
exit(runner.run(definitions.DATAPACKS_PATH, definitions.ROOT_DIR))
