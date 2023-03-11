# 🔧 Changelog

## (WIP) 1.19 - 2.0 - Bookshelf

```{admonition} Breaking changes
:class: warning

This version contain breaking changes. In the following changelog, they are identified by the 💥 emoji.
```

### ➕ Addition

- There is now a changelog! 🎉
- Added `bs.vector:get_by_motion` function
- Added a scale 3 variation to the `bs.math:common/exp` function
- (WIP) Added unit tests to ensure that the library is working as expected before each release.

### 🔁 Tweaks

- 💥 All vectors scores where rename such as `bs.vector.x` become `bs.vector.x` to be fully consistent with the rest of the lib. This is a breaking change, but it should be easy to fix in your projects with a simple "search & replace" action.
- 💥 Classical and local vector submodules was merge. `bs.vector[Left,Up,Front]` was replaced by `bs.vector.[x,y,z]`
- 💥 The project got a fresh new identity: Bookshelf. It imply that all the namespace, score, entities tag and other names containing the "glib" prefix was changed to "bs". This is a breaking change, but it should be easy to fix in your projects with a simple "search & replace" action.
- (WIP) Improved documentation style (inspired from Numpy doc)
- 💥 `bs.math:common/log` now give output shifted by 3 digits (3,14159 -> 3141) instead of 4 to be more consistant with other mathematical functions.
- 💥 Merged LGdir and BiomeDetector systems in `bs.example` module

### 🐛 Bug fixes

- Orientation and location getters was not clearing the default entity, which sometimes cause bugs in systems that try to get the entity at the same location.
- 💥 The `bs.math:trig/sin` function was actually cmputing -sin(x) instead of sin(x).
- Fixed `bs.math::common/log`, `bs.math:common/log10`, `bs.math:common/log2` and `bs.math:common/loga` functions
- Fixed `bs.math:trig/arctan` function
- Fixed `bs.move:by_local_vector` function
- Fixed `bs.bitwise:two_complement` function
- Fixed `bs.location:spread` - Thanks to A2va in https://github.com/Gunivers/Bookshelf/pull/41