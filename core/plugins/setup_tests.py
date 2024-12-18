from collections.abc import Generator
from typing import ClassVar

from beet import Context, NamespaceFileScope, TextFile


def beet_default(ctx: Context) -> Generator:
    """Include test functions from the test folder."""
    ctx.data.extend_namespace.append(TestFunction)
    yield
    offset = len(ctx.template.render("core/header.jinja"))
    for _, file in ctx.data.all(extend=TestFunction):
        file.setup_batch(ctx.directory.name, offset)


class TestFunction(TextFile):
    """Represents a PackTest Minecraft function file."""

    scope: ClassVar[NamespaceFileScope] = ("test",)
    extension: ClassVar[str] = ".mcfunction"

    def setup_batch(self, module: str, offset: int) -> None:
        """Set up the test function with module-specific adjustments."""
        batch = f"# @batch {module}\n"
        before = f'# @beforebatch function #bs.load:exclusive {{module:"{module}"}}\n'
        self.set_content(f"{self.text[:offset]}{batch}{before}{self.text[offset:]}")
