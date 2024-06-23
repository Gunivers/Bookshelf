import os
from logger.github_logger import GithubLogger
from logger.logger import Logger


def newLogger():
    if os.getenv('GITHUB_WORKSPACE'):
        return GithubLogger()
    else:
        return Logger()
