from beet import Context
from datetime import datetime


def beet_default(ctx: Context):
    ctx.require('beet.contrib.inline_function_tag')
    ctx.template.add_package('core')
    ctx.template.expose('now', datetime.now)
