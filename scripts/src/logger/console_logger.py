from colored import Fore, Style
from logger.base_logger import BaseLogger


class ConsoleLogger(BaseLogger):
    def error(self, *messages: list[str|dict], count: bool = True) -> None:
        return super().error(
            *[f"{Fore.red}{Style.bold}{msg.get('title', 'Error')}{Style.reset}{Fore.red}: {msg.get('message')}" for msg in messages if isinstance(msg, dict)],
            *[f"{Fore.red}{msg}" for msg in messages if isinstance(msg, str)],
            count=count,
        )

    def warning(self, *messages: list[str|dict], count: bool = True) -> None:
        return super().warning(
            *[f"{Fore.yellow}{Style.bold}{msg.get('title', 'Warning')}{Style.reset}{Fore.yellow}: {msg.get('message')}" for msg in messages if isinstance(msg, dict)],
            *[f"{Fore.yellow}{msg}" for msg in messages if isinstance(msg, str)],
            count=count,
        )

    def success(self, *messages: list[str]) -> None:
        return super().success(*[f"{Fore.green}{msg}" for msg in messages])

    def print(self, *messages: list[str]) -> None:
        return super().print(*[f"{Fore.dark_gray}{msg}" for msg in messages])
