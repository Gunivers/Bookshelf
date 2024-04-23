# 🛠️ Changelog

## Bookshelf - 2.0.0

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
