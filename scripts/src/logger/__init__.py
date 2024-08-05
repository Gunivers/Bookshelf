from logger.base_logger import BaseLogger
from logger.console_logger import ConsoleLogger
from logger.github_logger import GithubLogger
import os


def new_logger() -> BaseLogger:
    return GithubLogger() if os.getenv('GITHUB_WORKSPACE') else ConsoleLogger()
