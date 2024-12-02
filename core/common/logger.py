import logging
import os
from colorama import Fore, Style
from contextlib import contextmanager
from typing import Optional


class ConsoleFormatter(logging.Formatter):
    """
    Formatter for console logs with color support.
    """
    COLORS = {
        logging.DEBUG: Fore.LIGHTBLACK_EX,
        logging.INFO: Fore.WHITE,
        logging.WARNING: Fore.YELLOW,
        logging.ERROR: Fore.RED,
        logging.CRITICAL: Fore.LIGHTRED_EX,
    }

    def format(self, record: logging.LogRecord) -> str:
        depth = getattr(record, 'depth', 0)
        depth -= getattr(record, 'step', 0)
        depth -= getattr(record, 'end_step', 0)
        color = self.COLORS.get(record.levelno, '')
        prefix = f'{record.title}: ' if getattr(record, 'title', False) else ''
        return '   ' * depth + f'{color}{prefix}{record.msg}{Style.RESET_ALL}'


class GithubFormatter(logging.Formatter):
    """
    Formatter for GitHub Actions annotations.
    """
    ANNOTATIONS = {
        logging.DEBUG: 'debug',
        logging.INFO: 'notice',
        logging.WARNING: 'warning',
        logging.ERROR: 'error',
        logging.CRITICAL: 'error',
    }

    def format(self, record: logging.LogRecord) -> str:
        if getattr(record, 'step', False):
            return f'::group::{record.msg}'
        if getattr(record, 'end_step', False):
            return f'::endgroup::\n{record.msg}'

        annotation = f'::{self.ANNOTATIONS.get(record.levelno)} '
        if getattr(record, 'title', False):
            annotation += f'title={record.title},'
        if getattr(record, 'file', False):
            annotation += f'file={record.file},'
        if getattr(record, 'line', False):
            annotation += f'line={record.line},'
        return annotation + f'::{record.msg}'


class StepLogger(logging.LoggerAdapter):
    """
    Tracks warnings and errors during a logging step.
    """
    contexts: list['StepLogger'] = []

    def __init__(self, logger):
        self.errors = 0
        self.warnings = 0
        StepLogger.contexts.append(self)
        super().__init__(logger, {
            'step': False,
            'end_step': False,
            'depth': len(StepLogger.contexts),
            'title': None,
            'line': None,
            'file': None,
        })

    def log(self, level, msg, *args, **kwargs):
        if level >= logging.ERROR:
            self.errors += 1
        elif level >= logging.WARNING:
            self.warnings += 1
        super().log(level, msg, *args, **kwargs)

    def process(self, msg, kwargs):
        extra = self.extra.copy()
        extra.update(kwargs.get('extra', {}))
        kwargs['extra'] = extra
        return msg, kwargs


@contextmanager
def log_step(message: Optional[str] = None):
    """
    Create a new logging context with optional step message.
    """
    ctx = StepLogger(logger)
    if message:
        ctx.info(message, extra={'step': True})

    try:
        yield ctx
    finally:
        StepLogger.contexts.pop()
        if len(StepLogger.contexts) > 0:
            StepLogger.contexts[-1].errors += ctx.errors
            StepLogger.contexts[-1].warnings += ctx.warnings
        else:
            match ctx.errors, ctx.warnings:
                case 0, 0:
                    ctx.info('✅ Done!', extra={'end_step': True})
                case 0, w:
                    ctx.info(f'🔔 Done with {w} warning(s).', extra={'end_step': True})
                case e, 0:
                    ctx.info(f'🚨 Done with {e} error(s).', extra={'end_step': True})
                case e, w:
                    ctx.info(f'🚨 Done with {e} error(s) and {w} warning(s).', extra={'end_step': True})


logger = logging.getLogger("bookshelf")
handler = logging.StreamHandler()
handler.setFormatter(GithubFormatter() if os.getenv("GITHUB_WORKSPACE") else ConsoleFormatter())
logger.addHandler(handler)
logger.setLevel(logging.DEBUG)
