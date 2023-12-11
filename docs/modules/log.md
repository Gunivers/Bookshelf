# 📄 Log

**`#bs.log:help`**

(first-steps)=
## 👶 First steps

Bookshelf provides functions to log messages in the chat. Different log levels are available for various types of logs:
1. **Debug**: Detailed debug information.
2. **Information**: Interesting / significant events.
3. **Warning**: Exceptional occurrences that are not errors.
4. **Error**: Runtime errors that should be monitored and fixed.

---

### Manage log granularity

A significant number of logs can quickly flood the chat. To prevent this, Bookshelf's log module can be configured to display specific logs based on two parameters: the **log level** and the **feature**.

Users need to give themselves tags that follow a strict syntax: `bs.log.<feature>.<level>`, where the level can be `debug`, `info`, `warn`, or `error`. To avoid conflict, Bookshelf modules use a strict syntax for the feature: `<module without 'bs.'>.<feature>`.

The `_` symbol acts as a wildcard, logging all features or all levels:
- `bs.log._.<level>`: show all logs regardless of the feature.
- `bs.log.<feature>._`: show all logs regardless of the level.
- `bs.log._._`: show all logs.

```{note}
Each level allows the visualization of subsequent levels. For example, if a user give themselves a tag ending with warn, they can visualize logs of warn and error levels. By default, logs are not displayed to any user.
```

---

### Customize log messages

Log functions take three variables as input. The `path` of the current function that inform users of the log origin, the `feature` used in the tag and the `message`.

```{warning}
The `message` string must be a valid JSON text component. Thus, to specify a plain string text as a message, the message needs to be escaped  (`"\"message\""` or `'"message"'`).
```

*Log a simple warning message. We assume the log originates from the `bs.foo:bar` function:*
```mcfunction
function #bs.log:warn { path: "bs.foo:bar", feature: "foo.bar", message: '"A warning message"' }
```
Will display the following message if the user has one of these tags:
- `bs.log.foo.bar.warn`
- `bs.log.foo.bar.info`
- `bs.log.foo.bar.debug`
- `bs.log._.warn`
- `bs.log._.info`
- `bs.log._.debug`
- `bs.log._._`
- `bs.log.foo.bar._`

![](/_imgs/modules/log/example-1.png)

*Log a complex info message. We assume the log originates from the `bs.foo:baz` function:*
```mcfunction
function #bs.log:info { path: "bs.foo:baz", feature: "foo.baz", message: '{"text":"Score: ","color":"light_purple"},{"score":{"name":"-1","objective":"bs.const"}},{"text":", "},{"text":"@p: ","color":"light_purple"},{"selector":"@p"},{"text":", "},{"text":"[hover me]","color":"light_purple","hoverEvent":{"action":"show_text","contents":"That tickles!"}}' }
```

Will display the following message if the user has one of these tags:
- `bs.log.foo.baz.info`
- `bs.log.foo.baz.debug`
- `bs.log._.info`
- `bs.log._.debug`
- `bs.log.foo.baz._`

![](/_imgs/modules/log/example-2.png)

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Log messages

::::{tab-set}
:::{tab-item} Error
```{function} #bs.log:error

Log a message as an error. For more information on how it works see the [first steps](#first-steps) section.

:Inputs:
  **Macro Var `path` [string]**: Origin path for the log (current Minecraft function).

  **Macro Var `feature` [string]**: Logged feature. Bookshelf format: `<module>.<feature name>`.

  **Macro Var `message` [string]**: Logged message. Must be a valid JSON text component.
```

*Log an error message that originates from the `bs.foo:bar` function:*
```mcfunction
function #bs.log:info { path: "bs.foo:bar", feature: "foo.bar", message: '"Error"' }
```
:::
:::{tab-item} Warning
```{function} #bs.log:warn

Log a message as a warning. For more information on how it works see the [first steps](#first-steps) section.

:Inputs:
  **Macro Var `path` [string]**: Origin path for the log (current Minecraft function).

  **Macro Var `feature` [string]**: Logged feature. Bookshelf format: `<module>.<feature name>`.

  **Macro Var `message` [string]**: Logged message. Must be a valid JSON text component.
```

*Log a warn message that originates from the `bs.foo:bar` function:*
```mcfunction
function #bs.log:info { path: "bs.foo:bar", feature: "foo.bar", message: '"Warning"' }
```
:::
:::{tab-item} Information
```{function} #bs.log:info

Log a message as an information. For more information on how it works see the [first steps](#first-steps) section.

:Inputs:
  **Macro Var `path` [string]**: Origin path for the log (current Minecraft function).

  **Macro Var `feature` [string]**: Logged feature. Bookshelf format: `<module>.<feature name>`.

  **Macro Var `message` [string]**: Logged message. Must be a valid JSON text component.
```

*Log an info message that originates from the `bs.foo:bar` function:*
```mcfunction
function #bs.log:info { path: "bs.foo:bar", feature: "foo.bar", message: '"Info"' }
```
:::
:::{tab-item} Debug
```{function} #bs.log:debug

Log a message as a debug. For more information on how it works see the [first steps](#first-steps) section.

:Inputs:
  **Macro Var `path` [string]**: Origin path for the log (current Minecraft function).

  **Macro Var `feature` [string]**: Logged feature. Bookshelf format: `<module>.<feature name>`.

  **Macro Var `message` [string]**: Logged message. Must be a valid JSON text component.
```

*Log a debug message that originates from the `bs.foo:bar` function:*
```mcfunction
function #bs.log:debug { path: "bs.foo:bar", feature: "foo.bar", message: '"Debug"' }
```
:::
::::

> **Credits**: theogiraudet

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
