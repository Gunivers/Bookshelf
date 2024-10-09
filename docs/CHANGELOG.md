# 🛠️ Changelog

---

## 📦 Bookshelf - 2.2.0

### 🎉 Addition

- ([203](https://github.com/Gunivers/Bookshelf/issues/203)) Add functions `#bs.hitbox:is_entity_in_block` and `#bs.hitbox:is_entity_in_blocks`.
- ([233](https://github.com/Gunivers/Bookshelf/issues/233)) Add a function to remove a link `#bs.link:remove_link`.
- ([233](https://github.com/Gunivers/Bookshelf/issues/233)) Add a `bs.link:link_equal` predicate and new relationships functions:
  - `#bs.link:as_children`
  - `#bs.link:as_parent`
  - `#bs.link:at_children`
  - `#bs.link:at_parent`
- ([171](https://github.com/Gunivers/Bookshelf/issues/171)) Add history for log messages.
- ([187](https://github.com/Gunivers/Bookshelf/pull/222)) Add randomized fill function `#bs.block:fill_random`.
- ([1](https://github.com/Gunivers/Bookshelf/issues/1)) ([220](https://github.com/Gunivers/Bookshelf/issues/220)) Add `bs.random` module for random distributions and noise generation:
  - Noise functions: white, simplex, and fractal
  - Random distributions: uniform, binomial, geometric, and Poisson
  - Random choice of an element from a list
- ([6](https://github.com/Gunivers/Bookshelf/issues/6)) Add `bs.generate` module for terrain generation:
  - Includes only 2D shape algorithms for now, enabling texture and heightmap terrain generation.
- ([251](https://github.com/Gunivers/Bookshelf/pull/251)) Enhanced `bs.block` fill functions: the `from` and `to` inputs now support both a list of 3 elements `[x, y, z]`, and a stringified version of coordinates (e.g., `~ ~5 25`)
- ([258]https://github.com/Gunivers/Bookshelf/issues/258) Add `bs.block:spawn_block_particles` feature.


### 🔁 Tweaks
- ([247](https://github.com/Gunivers/Bookshelf/pull/247)) Improve default log format.
- ([252](https://github.com/Gunivers/Bookshelf/pull/252)) Enhanced speed of `bs.hitbox` module.

### 🐛 Fixes
- ([243](https://github.com/Gunivers/Bookshelf/issues/243)) Fix `bs.health` and `bs.move` unload functions.
- ([254](https://github.com/Gunivers/Bookshelf/issues/254)) Fix interruptions in the execution loop caused by `#bs.schedule:schedule` callbacks.

### 📄 Documentation
- ([244](https://github.com/Gunivers/Bookshelf/issues/244)) Merge the Inverse trigonometry section in `bs.math` with the Trigonometry one for better clarity.

---

## 📦 Bookshelf - 2.1.1

### 🔁 Tweaks
- ([238](https://github.com/Gunivers/Bookshelf/pull/238)) Load tags now load modules in isolation.
- ([237](https://github.com/Gunivers/Bookshelf/pull/237)) Enhanced speed of `bs.block` module.
- ([218](https://github.com/Gunivers/Bookshelf/pull/218)) Enhanced speed of factorial function in `bs.math`.

### 🐛 Fixes
- ([236](https://github.com/Gunivers/Bookshelf/issues/236)) Fix `bs.block`, `bs.id` and `bs.math` load functions.
- ([235](https://github.com/Gunivers/Bookshelf/issues/235)) Fix `bs.block` inputs that required extra escaping.

### 📄 Documentation
- ([215](https://github.com/Gunivers/Bookshelf/issues/215)) There is now documentation about the documentation (kind of metadocumentation?).

---

## 📦 Bookshelf - 2.1.0

Bookshelf is now based on **Minecraft 1.21**.

### 🎉 Addition
- ([187](https://github.com/Gunivers/Bookshelf/issues/187)) Add `#bs.block:map_type` and `#bs.block:mix_type` functions.

### 🐛 Fixes
- ([211](https://github.com/Gunivers/Bookshelf/pull/211)) Add missing help function tag in `bs.link`.
- ([211](https://github.com/Gunivers/Bookshelf/pull/211)) Add missing help function tag in `bs.vector`.
- ([211](https://github.com/Gunivers/Bookshelf/pull/211)) Add missing help function tag in `bs.xp`.

### 📄 Documentation
- ([206](https://github.com/Gunivers/Bookshelf/issues/206)) Add new related datapacks and mods.
- ([208](https://github.com/Gunivers/Bookshelf/issues/208)) Add missing documentation for documentation for feature `bs.position:get_pos_and_rot`.
- ([208](https://github.com/Gunivers/Bookshelf/issues/208)) Add missing documentation for documentation for feature `bs.position:set_pos_and_rot`.
- ([208](https://github.com/Gunivers/Bookshelf/issues/208)) Add missing documentation for documentation for feature `bs.position:add_pos_and_rot`.

### 📋 Conventions
- ([#200](https://github.com/Gunivers/Bookshelf/issues/200)) We throw away the old feature function header to a new one with only the licence. This header is now mandatory for all functions. All the metadata that was present inside the old one have been moved to the feature function tag.
- ([#52](https://github.com/Gunivers/Bookshelf/issues/52), [#175](https://github.com/Gunivers/Bookshelf/issues/175)) Each module has now its own metadata that should be specified manually. The metadata of the features and modules are used to generate more metadata, including the dependencies. These metadata can be used by bots like the incomming Bookshelf Manager. More information [here](project:contribute/metadata.md).

### ⚙️ Github and CI
- Added a template for pull requests.
- Added templates for issues.
- ([#199](https://github.com/Gunivers/Bookshelf/pull/199)) The different metadata (the manually specified one and the generated one) are now automatically verified at each commit inside a pull request. This prevents them from being forgotten. More information [here](project:contribute/contribution-validation.md).

---

## 📦 Bookshelf - 2.0.0

```{admonition} Breaking changes
:class: warning

This new version is filled with breaking changes. Since maintaining a list of those became unrealistic, the following changelog only highlights a selection of tweaks and new functionalities.
```

### 🎉 Addition
- There is now a changelog!
- Added player health manipulation.
- Added precise collisions (move, raycast and view).
- Added float manipulation (frexp and ldexp).
- Added a new hitbox module.
- Added a new raycast module.
- Added a new sidebar module.

### 🔁 Tweaks
- The project has a new fresh identity: Bookshelf.
- Every module has been reworked for improved accuracy, performance, and/or simplicity.
- Renamed almost everything (scores, objectives, functions, ...).
- Many functions now utilize macros, storage, or fake scores instead of objectives.
- Removed the core module. The library no longer requires a base module.
- Removed outdated modules (cache, item, mapedit, and memory).
- Merged the location and orientation modules into a new position module.
- Bitwise operations have been moved out of the math module into a separate module.
- Enhanced the accuracy of the move and view modules due to their rework and the addition of the new hitbox module.
- The schedule module now maintains the current execution context.

### 🐛 Bug fixes
- Who knows at this point 🤷‍♂️, almost no legacy code remains...

---

## 📦 Gunivers Lib - 1.0.0

Data load error: TooLazyException

Our devs are too busy coding the future to dig up the past...
