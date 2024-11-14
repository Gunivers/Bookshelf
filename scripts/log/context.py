import logging
import os
from .formatters import ConsoleFormatter, GithubFormatter
from contextlib import contextmanager
from typing import Optional


logger = logging.getLogger("bookshelf")
logger.setLevel(logging.DEBUG)

handler = logging.StreamHandler()
handler.setFormatter(GithubFormatter() if os.getenv('GITHUB_WORKSPACE') else ConsoleFormatter())
logger.addHandler(handler)

class StepContext(logging.LoggerAdapter):
    """
    Tracks errors and warnings for a specific logging context.
    """
    contexts: list['StepContext'] = []

    def __init__(self, logger):
        self.errors = 0
        self.warnings = 0
        StepContext.contexts.append(self)
        super().__init__(logger, {
            'step': False,
            'end_step': False,
            'depth': len(StepContext.contexts),
            'title': None,
            'line': None,
            'file': None,
        })

    def process(self, msg, kwargs):
        extra = self.extra.copy()
        extra.update(kwargs.get('extra', {}))
        kwargs['extra'] = extra
        return msg, kwargs

    def warning(self, msg, *args, **kwargs):
        self.warnings += 1
        super().warning(msg, *args, **kwargs)

    def error(self, msg, *args, **kwargs):
        self.errors += 1
        super().error(msg, *args, **kwargs)

    def critical(self, msg, *args, **kwargs):
        self.errors += 1
        super().critical(msg, *args, **kwargs)


@contextmanager
def step(message: Optional[str] = None):
    """
    Create a new logging context with optional step message.
    """
    ctx = StepContext(logger)
    if message:
        ctx.extra['step'] = True
        ctx.info(message)
        ctx.extra['step'] = False

    try:
        yield ctx
    finally:
        StepContext.contexts.pop()
        if len(StepContext.contexts) > 1:
            StepContext.contexts[-1].errors += ctx.errors
            StepContext.contexts[-1].warnings += ctx.warnings

        ctx.extra['end_step'] = True
        match ctx.errors, ctx.warnings:
            case 0, 0:
                ctx.info('✅ Done!')
            case 0, w:
                ctx.info(f'🔔 Done with {w} warning(s).')
            case e, 0:
                ctx.info(f'🚨 Done with {e} error(s).')
            case e, w:
                ctx.info(f'🚨 Done with {e} error(s) and {w} warning(s).')
        ctx.extra['end_step'] = False
