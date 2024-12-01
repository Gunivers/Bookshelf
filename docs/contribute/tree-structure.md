---
html_theme.sidebar_secondary.remove: true
---

# 🌳 Tree structure

Bookshelf respects a certain tree structure which can be similar to the Java packages, called "modules" in this project. The added features must therefore be positioned in these various modules according to their usefulness.

- Each module should be responsible for loading and unloading itself. This means that each module must redefine objectives, constants, and everything else that is needed.

- Each module should declare a metadata file, as detailled in the [metadata page](project:metadata.md).

- Each feature function should have its own function tag.

- Each module should have a help function tag, a load function tag (responsible for loading the module and its dependencies) and an unload function tag.

- A feature is equal to a unique utility, so we should not hesitate to decompose its features in order to make it more readable and to promote reusability.

In addition to these few constraints, the Bookshelf contributor is free to organise their files as they wishes as long as it remains coherent, understandable and it respects the global structure detailed below:

:::{treeview}
- {dir}`folder` data
  - {dir}`folder` <module>
    - {dir}`folder` .metadata
      - {dir}`json` metadata.json
    - {dir}`folder` functions
      - {dir}`folder` \<feature1\>
        - {dir}`mcfunction` \<feature1\>.mcfunction
        - {dir}`mcfunction` ...
      - {dir}`mcfunction` \<feature2\>.mcfunction
      - {dir}`mcfunction` \_\_load\_\_.mcfunction
      - {dir}`mcfunction` \_\_unload\_\_.mcfunction
    - {dir}`folder` <predicates|loot_tables|...>
      - {dir}`folder` \<feature1\>
        - {dir}`json` \<feature1\>.json
        - {dir}`json` ...
      - {dir}`json` \<feature2\>.json
    - {dir}`folder` tags
      - {dir}`folder` functions
        - {dir}`json` \<feature1\>.json
        - {dir}`json` ...
  - {dir}`folder` ...
:::

:::{note}
   Functions, predicates, structures, loot tables etc. must respect the same structure.
:::

