from beet import Context, TextFile, NamespaceFileScope
from typing import ClassVar


def beet_default(ctx: Context):
    ctx.data.extend_namespace.append(TestFunction)
    yield
    offset = len(ctx.template.render('core/header.jinja'))
    for _, function in ctx.data.all(extend=TestFunction):
        function.text = f'# @batch {ctx.data.name}\n' + function.text[offset:]


class TestFunction(TextFile):
    scope: ClassVar[NamespaceFileScope] = ("test",)
    extension: ClassVar[str] = ".mcfunction"
