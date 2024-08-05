from abc import ABC
from colored import Style


tab_size = 3

class BaseLogger(ABC):
    _context_error: list[int] = [0]
    _level = 0
    _errors = 0
    _warnings = 0

    def error(self, *messages: list[str|dict], count: bool = True) -> None:
        """
        Print error messages, in red.
        :param messages: the messages to print
        :param count: if True, increment the error count
        """
        if count:
            self._errors += len(messages)
            self._context_error[-1] += len(messages)
        self._print(*messages)

    def warning(self, *messages: list[str|dict], count: bool = True) -> None:
        """
        Print warning messages, in yellow.
        :param messages: the messages to print
        :param count: if True, increment the warning count
        """
        if count:
            self._warnings += len(messages)
        self._print(*messages)

    def success(self, *messages: list[str]) -> None:
        """
        Print success messages, in green.
        :param messages: the messages to print
        """
        self._print(*messages)

    def print(self, *messages: list[str]) -> None:
        """
        Print messages, in gray.
        :param messages: the messages to print
        """
        self._print(*messages)

    def step(self, message: str, manage_indent: bool = True) -> None:
        """
        Print a step message.
        A step automatically increment the indentation for the next logs until the end_step() method is called or a new step is printed.
        :param message: the message to print
        :param manage_indent: if False, do not update the indentation.
        """
        if manage_indent:
            self._unindent()
            self._print(message)
            self._indent()
        else:
            self._print(message)

    def end_step(self) -> None:
        """
        End the current step.
        Descrease the indentation.
        """
        self._unindent()

    def reset(self) -> None:
        """
        Reset the different counters of the logger as well as the indentation level.
        """
        self._level = 0
        self._errors = 0
        self._warnings = 0
        self._context_error = [0]

    def new_error_context(self) -> None:
        """
        Create a new error context.
        An error context has its own error count.
        """
        self._context_error.append(0)

    def reduce_error_context(self) -> bool:
        """
        Pop the last error context and add the errors number of this one to the previous error context.
        :return: True if the popped error context has errors.
        """
        result = self._context_error[-1] > 0
        if len(self._context_error) >= 2:
            self._context_error[-2] += self._context_error[-1]
        self._context_error.pop()
        return result

    def has_level_errors(self) -> bool:
        """
        :return: True if the current error context has errors.
        """
        return self._context_error[-1] > 0

    def done(self) -> bool:
        """
        Print the result of the process with the number of errors and warnings.
        """
        while self._level > 0:
            self.end_step()

        match self._errors, self._warnings:
            case 0, 0:
                self._print("✅ Done!")
            case 0, _:
                self._print(f"🔔 Done with {self._warnings} warnings.")
            case _, 0:
                self._print(f"🚨 Done with {self._errors} errors.")
            case _:
                self._print(f"🚨 Done with {self._errors} errors and {self._warnings} warnings.")
        return self._errors > 0

    def _indent(self) -> None:
        """
        Increase the indentation.
        """
        self._level += 1

    def _unindent(self) -> None:
        """
        Decrease the indentation.
        """
        if self._level > 0:
            self._level -= 1

    def _print(self, *messages: list[str]) -> None:
        """
        Print raw messages.
        :param messages: the messages to print
        """
        for msg in messages:
            print(" " * self._level * tab_size + f"{msg}{Style.reset}")
