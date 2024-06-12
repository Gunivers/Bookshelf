from colored import Style, Fore


multiplier = 3

class Logger:

    __level = 0
    __context_error: list[int] = [0]

    __errors = 0
    __warnings = 0

    def print_err(self, *messages: list[str], count: bool = True):
        """
        Print an error message, in red.
        :param messages: the messages to print
        :param count: if True, increment the error count
        """
        if count:
            self.__errors += len(messages)
            self.__context_error[-1] += len(messages)
        self.print_custom(*messages, color=Fore.red)

    def print_success(self, *messages: list[str]):
        """
        Print a success message, in green.
        :param messages: the messages to print
        """
        self.print_custom(*messages, color=Fore.green)

    def print_warn(self, *messages: list[str], count: bool = True):
        """
        Print a warning message, in yellow.
        :param messages: the messages to print
        """
        if count:
            self.__warnings += len(messages)
        self.print_custom(*messages, color=Fore.yellow)

    def print_log(self, *messages: list[str]):
        """
        Print a log message, in dark gray.
        :param messages: the messages to print
        """
        self.print_custom(*messages, color=Fore.dark_gray)


    def print_step(self, message: str, emoji: str, manage_indent: bool = True):
        """
        Print a message with an emoji.
        A step automatically increment the indentation for the next logs until the end_step() method is called or a new step is printed.
        :param message: the message to print
        :param emoji: the emoji to display
        :param manage_indent: if False, do not update the indentation.
        """
        if manage_indent:
            self.unindent()
            self.print_custom(message, emoji=emoji)
            self.indent()
        else:
            self.print_custom(message, emoji=emoji)

    def print_custom(self, *messages: list[str], emoji: str = "", color: str = ""):
        """
        Print a message with an emoji.
        :param message: the message to print
        :param emoji: the emoji to display
        """
        for m in messages:
            self.__print(f"{color}{emoji} {m}{Style.reset}")

    def end_step(self):
        """
        End the current step.
        Descrease the indentation.
        """
        self.unindent()

    def indent(self):
        """
        Increase the indentation.
        """
        self.__level += 1


    def unindent(self):
        """
        Decrease the indentation.
        """
        if self.__level > 0:
            self.__level -= 1

    def new_error_context(self):
        """
        Create a new error context.
        An error context has its own error count.
        """
        self.__context_error.append(0)

    def reduce_error_context(self) -> bool:
        """
        Pop the last error context and add the errors number of this one to the previous error context.
        :return: True if the popped error context has errors.
        """
        result = self.__context_error[-1] > 0
        if len(self.__context_error) >= 2:
            self.__context_error[-2] += self.__context_error[-1]
        self.__context_error.pop()
        return result

    def reset(self):
        """
        Reset the different counters of the logger as well as the indentation level.
        """
        self.__level = 0
        self.__errors = 0
        self.__warnings = 0
        self.__context_error = [0]

    def has_level_errors(self) -> bool:
        """
        :return: True if the current error context has errors.
        """
        return self.__context_error[-1] > 0

    def print_done(self):
        """
        Print the result of the process with the number of errors and warnings.
        """
        prefix = ""
        message = "Done"
        if self.__errors > 0:
            prefix = "❌ "
            message += f" with {self.__errors} errors"
            if self.__warnings > 0:
                message += f" and {self.__warnings} warnings"
        elif self.__warnings > 0:
            prefix = "⚠️ "
            message += f" with {self.__warnings} warnings"
        else:
            prefix = "✅ "
        if self.__errors == 0 and self.__warnings == 0:
            message += "!"
        else:
            message += "."
        self.__level = 0
        self.__print(prefix + message)
        return self.__errors > 0

    def __print(self, message: str):
        print(" " * self.__level * multiplier + message)
