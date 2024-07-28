---
html_theme.sidebar_secondary.remove: true
---

# 🌳 Tree structure

Bookshelf respects a certain tree structure which can be similar to Java packages, called "modules" in this project. The added features must therefore be positioned in these various modules according to their usefulness.

---

**Module requirements:**

- Each module must declare a metadata file as detailed in the [metadata page](project:metadata.md).

- Each module should be responsible for loading and unloading itself. This includes redefining objectives, constants, and any other necessary elements.

- Each module should have a help function tag, a load function tag (responsible for loading the module and its dependencies) and an unload function tag.

- Each module's load and unload function tags should be referenced as optional in `#minecraft:load` and `#minecraft:unload` respectively.

- The load function tag for each module must start by unloading all other modules using `#minecraft:unload`. After that, it should load the module and its dependencies. Weak dependencies can be specified with `"required"`: false. For example, in the health module:
  ```json
  {
    "values": [
      "#minecraft:unload",
      "bs.health:__load__",
      {
        "id": "#bs.log:load",
        "required": false
      }
    ]
  }
  ```

**Feature requirements:**

- Each feature function should have its own function tag.

- A feature is equal to a unique utility, so we should not hesitate to decompose its features in order to make it more readable and to promote reusability.

In addition to these few constraints, the Bookshelf contributor is free to organise their files as they wishes as long as it remains coherent, understandable and it respects the global structure detailed below:

```
📁data
 ├─ 📁 <module>
 |   ├─ 📁 .metadata
 |   |   └─ 📄 module.json
 │   ├─ 📁 function
 │   │   ├─ 📁 <feature1>
 │   │   │   ├─ 📄 <feature1>.mcfunction
 │   │   │   └─ 📄 ...
 │   │   ├─ 📄 <feature2>.mcfunction
 │   │   ├─ 📄 __load__.mcfunction
 │   │   ├─ 📄 __unload__.mcfunction
 │   ├─ 📁 <predicate|loot_table|...>
 │   │   ├─ 📁 <feature1>
 │   │   │   ├─ 📄 <feature1>.json
 │   │   │   └─ 📄 ...
 │   │   ├─ 📄 <feature2>.json
 │   └─ 📁 tags
 │       └─ 📁 function
 │           ├─ 📄 <feature1>.json
 │           └─ 📄 ...
 └─ 📁 ...
```

:::{note}
   Functions, predicates, structures, loot tables etc. must respect the same structure.
:::
