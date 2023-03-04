---
html_theme.sidebar_secondary.remove: true
---

# 🌳 Tree structure

The lib must respect this global structure:

```
📁data
├─ 📁 <module1>
│  └─ 📁 functions/predicates/loot_tables/...
│     ├─ 📁 <feature1>
│     ├─ 📁 <feature2>
│     ├─ 📄 <feature1>
│     └─ 📄 <feature2>
├─ 📁 <module2>
│  └─ ...
└─ ...
```

:::{note}
   Functions, predicates, structures, loot tables etc. must respect the same structure.
:::

In this structure, you can find a "feature" file and it's associated folder. This "feature" représent a "minimal viable product" (something that have a specific utility but that can require to be a part of another system in order to work)

Features files must respect this structure:

```
📄 <featureName>
📁 <featurscaleeName>
    ├─ 📁 child
    │  │  # sub-functions, not destined to be executed by the user, ex:
    │  ├─ 📄 loop.mcfunction
    │  └─ 📄 ...
    ├─ 📁 config
    │  │  # mcfunction editable by the user to allwo him to customize the function behavior, ex:
    │  ├─ 📄 entity_concerned.mcfunction
    │  └─ 📄 ...
    ├─ 📁 debug
    │   │  # tools dedicated to debug a system, ex:
    │   ├─ 📄 print.mcfunction
    │   └─ 📄 ...
    └─ 📁 scale
       │  # Same function, but with another precision, ex:
       ├─ 📄 3.mcfunction
       └─ 📄 ...
```

:::{note}
   The main file is the only file that is required. Other files/folders depends on the needs of the feature.
:::

| Folder | Description |
|:------:|:-----------:|
| Child    | Child folder contain every function used by other functions to make them works.<br> These functions are not supposed to be executed or edited by the user. |
| Config   | The lib has several systems that manage different behavior (e.g. pathfinding,<br> a bat will not have the same behavior as a villager).<br> You will then find a "main" file that will list the different files and<br> call the right one according to a certain condition.<br> This allows the user of the lib to create his own<br> behavior by copying an existing behavior file, adapting it,<br> and linking it to the system via the "main" file. |
| Debug    | The "debug" folders contain functions that are intended to display<br> a certain number of parameters specific to the folder<br> in which they are located<br> (e.g. debug in the vector folder will display the different vectors).<br> These functions are usually called by other functions but can also be executed<br> by the user in order to debug one of his systems at a specific location. |
| Scale | They allow to manage the number of decimals used in the functions.<br> Minecraft allowing to store only integers, to use decimals, you have to be clever.<br> Thus, a function in "scale/3" will be a function which will see its parameters<br> (at least the relevant ones), multiplied by 1000 to be able to store 3 digits after the<br> decimal point (3.14159 * 10^3 = 3141.59, which gives 3141 once in a score).<br> Not all functions have an equivalent in the above specifications.<br> If you need a function with a precision that is not supported, contact us on our<br> Discord, a dev will do that quickly ;) |