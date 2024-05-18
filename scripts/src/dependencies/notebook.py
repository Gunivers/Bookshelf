import subprocess
import definitions
from dependencies.process import process

headSHA = subprocess.check_output("git rev-parse HEAD", encoding='utf-8', shell=True)
baseSHA = subprocess.check_output("git rev-parse origin/master", encoding='utf-8', shell=True)
workspace = definitions.ROOT_DIR

gitLogCommand = f"git diff --name-only {baseSHA}...{headSHA}"
result = subprocess.check_output(gitLogCommand, encoding='utf-8', shell=True)
filePaths = list(filter(lambda path: path.startswith('datapacks/'), result.splitlines()))

process(workspace, filePaths)
