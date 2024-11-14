from beet import Context
from datetime import datetime
from os import listdir
from scripts.utils import ROOT_DIR

def beet_default(ctx: Context):
    ctx.require('beet.contrib.inline_function_tag')
    ctx.template.add_package('resources')
    ctx.template.expose('now', datetime.now)
    ctx.meta['bookshelf_modules'] = [
        mod for mod in listdir(ROOT_DIR / 'modules')
        if (ROOT_DIR / 'modules' / mod).is_dir()
    ]
