import inspect
from pathlib import Path
import definitions


_offset = 3

def get_caller() -> tuple[str, int] | None:
    i = 0
    path = None
    lineno = -1
    for frame in inspect.stack():
        if frame.filename.startswith(str(definitions.ROOT_DIR)):
            i += 1
            path = Path(frame.filename).relative_to(definitions.ROOT_DIR).as_posix()
            lineno = frame.lineno
            if i == _offset:
                break
    return path, lineno
