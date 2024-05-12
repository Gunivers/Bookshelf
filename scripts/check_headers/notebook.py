import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(__file__)))
import subprocess
import definitions
import process



def check_unmerged_features():
    headSHA = subprocess.check_output("git rev-parse HEAD", encoding='utf-8', shell=True)
    baseSHA = subprocess.check_output("git rev-parse origin/master", encoding='utf-8', shell=True)

    git_diff_command = f"git diff --name-only {baseSHA}...{headSHA}"
    result = subprocess.check_output(git_diff_command, encoding='utf-8', shell=True)
    file_paths = list(filter(lambda path: path.startswith('datapacks/'), result.splitlines()))

    check_features(file_paths)

def check_features(tag_paths: list[str]):
    workspace = definitions.ROOT_DIR
    process.process(workspace, tag_paths)
