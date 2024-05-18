from pathlib import Path
import subprocess
import os
import json
from files_provider.files_provider import FilePathsManager
from dependencies import process

workspace = os.getenv('GITHUB_WORKSPACE')
event = os.getenv('GITHUB_EVENT')

body = json.loads(event)
baseSHA = body['pull_request']['base']['sha']
headSHA = body['pull_request']['head']['sha']

gitLogCommand = f"git diff --name-only {baseSHA}...{headSHA}"
result = subprocess.check_output(gitLogCommand, encoding='utf-8', shell=True)
filePaths = result.splitlines()

paths: list[Path] = list(map(lambda path: Path(os.path.join(workspace, path)), filePaths))

files = FilePathsManager(paths) \
        .only_dp_artifacts() \
        .get()

errors = process(files)

if(errors):
    exit(1)
