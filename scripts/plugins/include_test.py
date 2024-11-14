from beet import Context, TextFile, NamespaceFileScope
from typing import ClassVar

def beet_default(ctx: Context):
    ctx.data.extend_namespace.append(TestFile)

class TestFile(TextFile):
    scope: ClassVar[NamespaceFileScope] = ("test",)
    extension: ClassVar[str] = ".mcfunction"
