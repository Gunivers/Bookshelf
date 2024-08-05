from colored import Fore
from logger.base_logger import BaseLogger
from pathlib import Path
import definitions
import inspect


class GithubLogger(BaseLogger):
    def error(self, *messages: list[str|dict], count: bool = True) -> None:
        file, line = get_caller()
        return super().error(
            *[f"::error title={msg.get('title', '')},file={msg.get('file', file)},line={msg.get('line', line)}::{msg.get('message')}" for msg in messages if isinstance(msg, dict)],
            *[f"::error file={file},line={line}::{msg}" for msg in messages if isinstance(msg, str)],
            count=count,
        )

    def warning(self, *messages: list[str|dict], count: bool = True) -> None:
        file, line = get_caller()
        return super().warning(
            *[f"::warning title={msg.get('title', '')},file={msg.get('file', file)},line={msg.get('line', line)}::{msg.get('message')}" for msg in messages if isinstance(msg, dict)],
            *[f"::warning file={file},line={line}::{msg}" for msg in messages if isinstance(msg, str)],
            count=count,
        )

    def success(self, *messages: list[str|dict]) -> None:
        return super().success(*[f"{Fore.green}{msg}" for msg in messages])

    def print(self, *messages: list[str|dict]) -> None:
        return super().print(*[f"{Fore.light_gray}{msg}" for msg in messages])

    def step(self, message: str|dict, manage_indent: bool = True) -> None:
        if manage_indent and self._level > 0:
            super().print("::endgroup::")
        return super().step(f"::group::{message}" if manage_indent else message, manage_indent)

    def end_step(self) -> None:
        if self._level > 0:
            super().print("::endgroup::")
        return super().end_step()


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
