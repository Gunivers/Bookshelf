import subprocess
import os
import json
from process import process

workspace = os.getenv('GITHUB_WORKSPACE')
event = os.getenv('GITHUB_EVENT')

body = json.loads(event)
baseSHA = body['pull_request']['base']['sha']
headSHA = body['pull_request']['head']['sha']

gitLogCommand = f"git diff --name-only {baseSHA}...{headSHA}"
result = subprocess.check_output(gitLogCommand, encoding='utf-8', shell=True)
filePaths = result.splitlines()

process(workspace, filePaths)
