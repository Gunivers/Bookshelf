from beet import Context, TextFile, NamespaceFileScope
from typing import ClassVar


def beet_default(ctx: Context):
    ctx.data.extend_namespace.append(TestFunction)
    yield
    header = ctx.template.render('core/header.jinja')
    offset = len(header)
    for _, function in ctx.data.all(extend=TestFunction):
        batch = f'# @batch {ctx.data.name}\n'
        beforebatch = f'# @beforebatch function #bs.load:exclusive {{module:"{ctx.data.name}"}}\n'
        function.text = f'{header}{batch}{beforebatch}{function.text[offset:]}'


class TestFunction(TextFile):
    scope: ClassVar[NamespaceFileScope] = ("test",)
    extension: ClassVar[str] = ".mcfunction"
