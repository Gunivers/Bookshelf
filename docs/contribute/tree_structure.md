---
html_theme.sidebar_secondary.remove: true
---

# 🌳 Tree structure

Bookshelf respects a certain tree structure which can be similar to the Java packages, called "modules" in this project. The added features must therefore be positioned in these various modules according to their usefulness.

- Each module should be responsible for loading and unloading itself. This means that each module must redefine objectives, constants, and everything else that is needed.

- Each module should also registered itself to the core module using the metadata objective.

- Each feature function should have its own function tag.

- A feature is equal to a unique utility, so we should not hesitate to decompose its features in order to make it more readable and to promote reusability.

In addition to these few constraints, the contributor is free to organise their files as they wishes as long as it remains coherent, understandable and it respects the global structure detailed below:

```
📁data
 ├─ 📁 <module>
 │   ├─ 📁 functions
 │   │   ├─ 📁 <feature1>
 │   │   │   ├─ 📄 <feature1>.mcfunction
 │   │   │   └─ 📄 ...
 │   │   ├─ 📄 <feature2>.mcfunction
 │   │   ├─ 📄 __load__.mcfunction
 │   │   ├─ 📄 __unload__.mcfunction
 │   ├─ 📁 <predicates|loot_tables|...>
 │   │   ├─ 📁 <feature1>
 │   │   │   ├─ 📄 <feature1>.json
 │   │   │   └─ 📄 ...
 │   │   ├─ 📄 <feature2>.json
 │   └─ 📁 tags
 │       └─ 📁 functions
 │           ├─ 📄 <feature1>.json
 │           └─ 📄 ...
 └─ 📁 ...
```

:::{note}
   Functions, predicates, structures, loot tables etc. must respect the same structure.
:::

