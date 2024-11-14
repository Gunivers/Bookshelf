---
html_theme.sidebar_secondary.remove: true
---

# 🌳 Tree structure

Bookshelf respects a certain tree structure which can be similar to Java packages, called "modules" in this project. The added features must therefore be positioned in these various modules according to their usefulness.

---

**Module requirements:**

- Each module must declare a `module.json` file as detailed in the [metadata page](project:metadata.md).

- Each module should have `__load__` and `__unload__` functions and be responsible for loading and unloading itself. This includes redefining objectives, constants, and any other necessary elements.


**Feature requirements:**

- Each feature function should have its own function tag.

- A feature is equal to a unique utility, so we should not hesitate to decompose its features in order to make it more readable and to promote reusability.

In addition to these few constraints, the Bookshelf contributor is free to organise their files as they wishes as long as it remains coherent, understandable and it respects the global structure detailed below:

```
📁 modules
 ├─ 📁 <module>
 │   ├─ 📁 data/<module>
 │   │   ├─ 📁 function
 │   │   │   ├─ 📁 <feature1>
 │   │   │   │   ├─ 📄 <feature1>.mcfunction
 │   │   │   │   └─ 📄 ...
 │   │   │   ├─ 📄 <feature2>.json
 │   │   │   ├─ 📄 __load__.mcfunction
 │   │   │   └─ 📄 __unload__.mcfunction
 │   │   ├─ 📁 <predicate|loot_table|...>
 │   │   │   ├─ 📁 <feature1>
 │   │   │   │   ├─ 📄 <feature1>.json
 │   │   │   │   └─ 📄 ...
 │   │   │   └─ 📄 <feature2>.json
 │   │   └─ 📁 tags
 │   │       └─ 📁 function
 │   │           ├─ 📄 <feature1>.json
 │   │           └─ 📄 ...
 │   └─ 📄 module.json
 └─ 📁 ...
```
