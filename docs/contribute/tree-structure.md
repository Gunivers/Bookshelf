---
html_theme.sidebar_secondary.remove: true
---

# 🌳 Tree Structure

Bookshelf respects a certain tree structure which can be similar to Java packages, called "modules" in this project. The added features must therefore be positioned in these various modules according to their usefulness.

---

:::::{grid} 1 2 2 2
::::{grid-item}
:columns: 12 6 7 7

**Module Requirements:**

- Each module must declare a `module.json` file as detailed in the [metadata page](project:metadata.md).

- Each module should have `__load__` and `__unload__` functions and be responsible for loading and unloading itself. This includes redefining objectives, constants, and any other necessary elements.


**Feature Requirements:**

- Each feature function should have a dedicated function tag that declares metadata, as detailed in the [metadata page](project:metadata.md).

- Each feature should declares metadata, as detailed in the [metadata page](project:metadata.md).

- A feature is equal to a unique utility, so we should not hesitate to decompose its features in order to make it more readable and to promote reusability.

In addition to these few constraints, the Bookshelf contributor is free to organise their files as they wishes as long as it remains coherent, understandable and it respects the global structure.
::::
::::{grid-item}
:columns: 12 6 5 5

:::{treeview}
- {dir}`folder` modules
  - {dir}`folder` \<module\>
    - {dir}`folder` data/\<module\>
      - {dir}`folder` function
        - {dir}`folder` \<feature1\>
          - {dir}`mcfunction` \<feature1\>.mcfunction
          - {dir}`mcfunction` ...
        - {dir}`mcfunction` \<feature2\>.mcfunction
        - {dir}`mcfunction` \_\_load\_\_.mcfunction
        - {dir}`mcfunction` \_\_unload\_\_.mcfunction
      - {dir}`folder` \<predicate|loot_table|...\>
        - {dir}`json` \<feature1\>.json
        - {dir}`json` ...
      - {dir}`folder` tags
        - {dir}`folder` function
          - {dir}`json` \<feature1\>.json
          - {dir}`json` ...
    - {dir}`json` module.json
  - {dir}`folder` ...
:::
::::
:::::
