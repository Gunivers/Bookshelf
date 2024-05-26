from colored import Style, Fore


multiplier = 3

class Logger:

    __level = 0
    __context_error: list[int] = [0]

    __errors = 0
    __warnings = 0

    def print_err(self, *messages: list[str], count: bool = True):
        for m in messages:
            self.__print(f"{Fore.red}{m}{Style.reset}")
            if count:
                self.__errors += 1
                self.__context_error[-1] += 1

    def print_success(self, *messages: list[str]):
        for m in messages:
            self.__print(f"{Fore.green}{m}{Style.reset}")

    def print_warn(self, *messages: list[str]):
        for m in messages:
            self.__print(f"{Fore.yellow}{m}{Style.reset}")
            self.__warnings += 1

    def print_log(self, *messages: list[str]):
        for m in messages:
            self.__print(f"{Fore.dark_gray}{m}{Style.reset}")


    def print_step(self, message: str, emoji: str, manage_indent: bool = True):
        if manage_indent:
            self.unindent()
            self.__print(f"{emoji} {message}")
            self.indent()
        else:
            self.__print(f"{emoji} {message}")

    def end_step(self):
        self.unindent()

    def indent(self):
        self.__level += 1


    def unindent(self):
        if self.__level > 0:
            self.__level -= 1

    def new_error_context(self):
        self.__context_error.append(0)

    def reduce_error_context(self) -> bool:
        result = self.__context_error[-1] > 0
        if len(self.__context_error) >= 2:
            self.__context_error[-2] += self.__context_error[-1]
        self.__context_error.pop()
        return result

    def reset(self):
        self.__level = 0
        self.__errors = 0
        self.__warnings = 0
        self.__context_error = [0]

    def has_level_errors(self) -> bool:
        return self.__context_error[-1] > 0

    def print_done(self):
        prefix = ""
        message = "Done"
        if self.__errors > 0:
            prefix = "❌ "
            message += f" with {self.__errors} errors."
            if self.__warnings > 0:
                message += f" and {self.__warnings} warnings."
        elif self.__warnings > 0:
            prefix = "⚠️ "
            message += f" with {self.__warnings} warnings."
        else:
            prefix = "✅ "
            message += "!"
        self.__level = 0
        self.__print(prefix + message)
        return self.__errors > 0

    def __print(self, message: str):
        print(" " * self.__level * multiplier + message)
