# 📄Log

**`#bs.log:_`**

## 👶 First steps

Bookshelf proposes facilities to log messages in the chat.
There are different logs levels to use according to the type of log:
1. Debug
2. Information
3. Warning
4. Error

(granularity-log)=
Manage the log granularity

:   A lot of logs in their code can flood the chat.
    To avoid that, the log module of Bookshelf can be configure to display only specific logs according to two parameters: the log level and the feature.
    To do that, the user wishing to display these specific logs need to give themselves tags with the following syntax: `bs.log.<module>.<feature>.<level>` where level is among `debug`, `info`, `warn` and `error`.

    Each log level enables the visualisation of the next levels.
    For instance, if a user give themselves a tag finishing by `warn`, they can visualize logs of `warn` and `error` levels.

    The tags `bs.log._.<level>` enables the display of all logs regardless of the feature.
    The tags `bs.log.<module>.<feature>._` enables the display of all logs regardless of the level (equivalent to `bs.log.<module>.<feature>.debug`).
    The tag `bs.log._._` enables the display of all logs.

    By default, the logs are not displayed to any user.

(customize-log)=
Customize the log message

:   The log functions take three variables as input:
    - The `path` (type: string) of the current function.
    This variable follows the minecraft path format.
    - The logged `feature` (type: string).
    This variable is used in the tag and follows the following syntax: `<module without 'bs.'>.<feature>`.
    - The log content `message` (type: string).
    This variable is any valid JSON text component usable in a tellraw.
    Several JSON text components can be specified by join them with a comma `,`.
    Note: To specify a plain string text as message, the message needs to have escaped quotes.
    For instance: `"\"message\""` or `'"message"'`.

Examples

:   The following function called `bs.foo:bar`:

    ```
    function #bs.log:warn { path: "bs.foo:bar", feature: "foo.bar", message: '"A warning message"' }
    ```

    Will display the following message if the user has one of these tags `bs.log.foo.bar.warn`, `bs.log.foo.bar.info`, `bs.log.foo.bar.debug`, `bs.log._.warn`, `bs.log._.info`, `bs.log._.debug`, `bs.log._._`, `bs.log.foo.bar._`:

    ![](img/log_example_1.png)

    The following function called `bs.foo:baz`:

    ```
    function #bs.log:info { path: "bs.foo:baz", feature: "foo.baz", message: '{"text": "Score: ","color": "light_purple"}, {"score": {"name": "@p", "objective": "bs.in.0"}}, {"text": ", "},{"text": "@p: ", "color": "light_purple"}, {"selector": "@p"}, {"text": ", hoverevent", "hoverEvent": {"action": "show_text", "contents": "Hi!"}}' }
    ```

    Will display the following message if the user has one of these tags `bs.log.foo.baz.info`, `bs.log.foo.baz.debug`, `bs.log._.info`, `bs.log._.debug`, `bs.log.foo.baz._`:

    ![](img/log_example_2.png)

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Debug

**`#bs.log:debug`**

Allows to log a message as a debug message.

Inputs

:   (macro variable) `path`: string
    : The Minecraft path of the current function.

    (macro variable) `feature`: string
    : The logged feature.
    Format: `<module>:<feature name>`.
    Used in the tag as described in the [Customize log message](#customize-log) section.

    (macro variable) `message`: string
    : The log message.
    Format: valid JSON text component as described in [Manage the log granularity](#granularity-log) section.

Examples

:   Example with a simple raw text:
    ```
    function #bs.log:debug { path: "bs.foo:bar", feature: "foo.bar", message: '"A warning message"' }
    ```

    Example with a complex JSON text components:
    ```
    function #bs.log:debug { path: "bs.foo:baz", feature: "foo.baz", message: '{"text": "Score: ","color": "light_purple"}, {"score": {"name": "@p", "objective": "bs.in.0"}}, {"text": ", "},{"text": "@p: ", "color": "light_purple"}, {"selector": "@p"}, {"text": ", hoverevent", "hoverEvent": {"action": "show_text", "contents": "Hi!"}}' }
    ```

> **Credits**: theogiraudet

---

### Information

**`#bs.log:info`**

Allows to log a message as an information message.

Inputs

:   (macro variable) `path`: string
    : The Minecraft path of the current function.

    (macro variable) `feature`: string
    : The logged feature.
    Format: `<module>:<feature name>`.
    Used in the tag as described in the [Customize log message](#customize-log) section.

    (macro variable) `message`: string
    : The log message.
    Format: valid JSON text component as described in [Manage the log granularity](#granularity-log) section.

Examples

:   Example with a simple raw text:
    ```
    function #bs.log:info { path: "bs.foo:bar", feature: "foo.bar", message: '"A warning message"' }
    ```

    Example with a complex JSON text components:
    ```
    function #bs.log:info { path: "bs.foo:baz", feature: "foo.baz", message: '{"text": "Score: ","color": "light_purple"}, {"score": {"name": "@p", "objective": "bs.in.0"}}, {"text": ", "},{"text": "@p: ", "color": "light_purple"}, {"selector": "@p"}, {"text": ", hoverevent", "hoverEvent": {"action": "show_text", "contents": "Hi!"}}' }
    ```

> **Credits**: theogiraudet

---

### Warning

**`#bs.log:warn`**

Allows to log a message as a warning message.

Inputs

:   (macro variable) `path`: string
    : The Minecraft path of the current function.

    (macro variable) `feature`: string
    : The logged feature.
    Format: `<module>:<feature name>`.
    Used in the tag as described in the [Customize log message](#customize-log) section.

    (macro variable) `message`: string
    : The log message.
    Format: valid JSON text component as described in [Manage the log granularity](#granularity-log) section.

Examples

:   Example with a simple raw text:
    ```
    function #bs.log:warn { path: "bs.foo:bar", feature: "foo.bar", message: '"A warning message"' }
    ```

    Example with a complex JSON text components:
    ```
    function #bs.log:warn { path: "bs.foo:baz", feature: "foo.baz", message: '{"text": "Score: ","color": "light_purple"}, {"score": {"name": "@p", "objective": "bs.in.0"}}, {"text": ", "},{"text": "@p: ", "color": "light_purple"}, {"selector": "@p"}, {"text": ", hoverevent", "hoverEvent": {"action": "show_text", "contents": "Hi!"}}' }
    ```

> **Credits**: theogiraudet

---

### Error

**`#bs.log:error`**

Allows to log a message as an error message.

Inputs

:   (macro variable) `path`: string
    : The Minecraft path of the current function.

    (macro variable) `feature`: string
    : The logged feature.
    Format: `<module>:<feature name>`.
    Used in the tag as described in the [Customize log message](#customize-log) section.

    (macro variable) `message`: string
    : The log message.
    Format: valid JSON text component as described in [Manage the log granularity](#granularity-log) section.

Examples

:   Example with a simple raw text:
    ```
    function #bs.log:error { path: "bs.foo:bar", feature: "foo.bar", message: '"A warning message"' }
    ```

    Example with a complex JSON text components:
    ```
    function #bs.log:error { path: "bs.foo:baz", feature: "foo.baz", message: '{"text": "Score: ","color": "light_purple"}, {"score": {"name": "@p", "objective": "bs.in.0"}}, {"text": ", "},{"text": "@p: ", "color": "light_purple"}, {"selector": "@p"}, {"text": ", hoverevent", "hoverEvent": {"action": "show_text", "contents": "Hi!"}}' }
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
