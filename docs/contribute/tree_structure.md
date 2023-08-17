---
html_theme.sidebar_secondary.remove: true
---

# 🌳 Tree structure

The lib must respect this global structure:

```
📁data
 ├─ 📁 <module>
 │   ├─ 📁 functions
 │   │   ├─ 📁 <feature>
 │   │   │   ├─ 📄 __main__.mcfunction
 │   │   │   ├─ 📄 __load__.mcfunction
 │   │   │   └─ 📄 ...
 │   │   └─ 📁 ...
 │   ├─ 📁 <predicates|loot_tables|...>
 │   │   ├─ 📁 <feature>
 │   │   └─ 📁 ...
 │   └─ 📁 tags
 │       └─ 📁 functions
 │           ├─ 📄 <feature>.json
 │           └─ 📄 ...
 └─ 📁 ...
```

:::{note}
   Functions, predicates, structures, loot tables etc. must respect the same structure.
:::
