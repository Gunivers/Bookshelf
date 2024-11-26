from ..toolkit.helpers import MODULES_DIR
from beet import Context
from datetime import datetime
from os import listdir

def beet_default(ctx: Context):
    ctx.require('beet.contrib.inline_function_tag')
    ctx.template.add_package('resources')
    ctx.template.expose('now', datetime.now)
    ctx.meta['bookshelf_modules'] = [
        mod for mod in listdir(MODULES_DIR)
        if (MODULES_DIR / mod).is_dir()
    ]
