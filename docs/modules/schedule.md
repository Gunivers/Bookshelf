# ⏲️ Schedule

**`#bs.schedule:_`**

Module to schedule the execution of commands.
Unlike the vanilla schedule command, this system allows the user to schedule commands (and not only functions) and it is possible to schedule several times the same command.

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Schedule

**`#bs.schedule:schedule`**

Allows to schedule a command.
If a command is registered in a tick where commands are already registered, adds the command after those already registered.

Inputs

:   (macro variable) `id`: string
    : An ID to identify the command (not necessarily unique).

    (macro variable) `command`: string
    : The command to schedule.

    (macro variable) `time`: integer
    : The time to wait before the execution of the command.

    (macro variable) `unit`: 'tick' or 'second' or 'minute'
    : The unit of the specified time.

Examples

:   Example to execute `say foo` in 5 ticks:
    ```
    function #bs.schedule:schedule { unit: "tick", id: "foo", time: 5, command: "say foo" }
    ```

    Example to execute `kill @e[type=slime]` in 2 minutes:
    ```
    function #bs.schedule:schedule { unit: "minute", id: "foo", time: 2, command: "kill @e[type=slime]" }
    ```

> **Credits**: theogiraudet

---

### Clear

**`#bs.schedule:clear`**

Remove all scheduled commands.

Examples

:   To remove all commands:
    ```
    function #bs.schedule:clear
    ```

> **Credits**: theogiraudet

---

### Cancel

**`#bs.schedule:cancel`**

Allows to cancel a scheduled command.
If several commands have the same ID, cancels only the command to be executed earliest.

Inputs

:   (macro variable) `id`: string
    : The ID of the command the cancel.

Examples

:   Example to cancel the command with the ID "foo":
    ```
    function #bs.schedule:schedule { id: "foo" }
    ```

> **Credits**: theogiraudet

---

<div align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>

<script src="https://giscus.app/client.js"
        data-repo="Gunivers/Glibs"
        data-repo-id="R_kgDOHQjqYg"
        data-category="Documentation"
        data-category-id="DIC_kwDOHQjqYs4CUQpy"
        data-mapping="title"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="bottom"
        data-theme="light"
        data-lang="fr"
        data-loading="lazy"
        crossorigin="anonymous"
        async>
</script>
