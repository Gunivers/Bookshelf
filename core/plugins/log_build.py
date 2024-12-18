import logging

from beet import Context


def beet_default(ctx: Context) -> None:
    """Log the module build process with a debug message."""
    logger = logging.getLogger("bookshelf")
    logger.debug("Build module '%s'", ctx.directory.name, extra={"depth":1})
