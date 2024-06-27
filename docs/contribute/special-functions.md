---
html_theme.sidebar_secondary.remove: true
---

# 🌟 Special functions

Some functions follow specific conventions to streamline functionality and ensure consistency across modules.

---

##  👉 The "ata" functions

This is a reduction of "as to at". Several functions require 2 positions to work (example: retrieve the distance between 2 points) or an entity and a position. To simplify the use, no need to pass 3 scores for each position. You will be able to place an entity on point 1 (if it is useful), then execute the function at point 2 while executing it as the entity on point 1.

---

## 🔒 The "reserved" functions

Reserved functions are special functions within each module that serve predefined purposes. They must all have a function tag (without "__") and are located at the root of each module.

:::{list-table}
*   - `__help__`
    - This function provides a path to the documentation for the module. **(Must be present in every module)**
*   - `__load__`
    - This function is executed when the module is loaded. **(Must be present in every module)**
*   - `__unload__`
    - This function is executed when the module is unloaded. **(Must be present in every module)**
*   - `__tick__`
    - This function is executed every tick.
:::
