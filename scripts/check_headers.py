from .log import step
from .utils import MODULES_DIR, ROOT_DIR, render_template


def main():
    """
    Main function to check headers of .mcfunction files.
    """
    template = render_template(ROOT_DIR / "resources/templates/header.jinja")

    with step("⏳ Checking function file headers…") as logger:
        for file_path in MODULES_DIR.rglob("*.mcfunction"):
            lines = file_path.read_text(encoding="utf-8").splitlines()[:len(template.splitlines())]
            header = "\n".join(lines).strip()

            if header != template.strip():
                relative_path = file_path.relative_to(ROOT_DIR)
                logger.error(f'Found invalid header in file "{relative_path}"', extra={
                    'title': 'Missing header',
                    'file': relative_path,
                })

    exit(logger.errors)
