import logging
from colorama import Fore, Style

COLORS = {
    logging.DEBUG: Fore.LIGHTBLACK_EX,
    logging.INFO: Fore.WHITE,
    logging.WARNING: Fore.YELLOW,
    logging.ERROR: Fore.RED,
    logging.CRITICAL: Fore.LIGHTRED_EX,
}


class ConsoleFormatter(logging.Formatter):
    def format(self, record):
        fmt = COLORS.get(record.levelno)
        fmt += '   ' * (record.depth - record.step - record.end_step)
        if record.title:
            fmt += f'{record.title}: '
        return fmt + record.msg + Style.RESET_ALL


class GithubFormatter(logging.Formatter):
    def format(self, record):
        if record.step:
            return f'::group::{record.msg}'
        if record.end_step:
            return f'::endgroup::\n{record.msg}'
        if record.levelno >= logging.WARNING:
            fmt = f'::{record.levelname} '
            if record.title != None:
                fmt += f'title={record.title},'
            if record.file != None:
                fmt += f'file={record.file},'
            if record.line != None:
                fmt += f'line={record.line},'
            return fmt + f'::{record.msg}'
        return COLORS.get(record.levelno) + record.msg + Style.RESET_ALL
