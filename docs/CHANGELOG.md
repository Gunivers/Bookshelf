# 🔧 Changelog

## (WIP) 1.19 - 2.0 - Bookshelf

```{admonition} Breaking changes
:class: warning

This version contain breaking changes. In the following changelog, they are identified by the 💥 emoji.
```

### ➕ Addition

- There is now a changelog! 🎉
- Added `bs.vector:get_by_motion` function
- Added a scale 3 variation to the `bs.math:exp` function
- (WIP) Added unit tests to ensure that the library is working as expected before each release.
- It is now possible to control every aspect off the collision process in `bs.move:by_vector`
- Added fractionned distribution to allow users to download modules as independant datapack - Thanks to ascpial in https://github.com/Gunivers/Bookshelf/pull/55
- `bs.vector:normalize` and `bs.vector:fast_normalize` now have a `bs.opt.0` option to specify the output precision and return the normalization factor on `bs.out.0`.

### 🔁 Tweaks

- 💥 All vectors scores where rename such as `bs.vector.x` become `bs.vector.x` to be fully consistent with the rest of the lib. This is a breaking change, but it should be easy to fix in your projects with a simple "search & replace" action.
- 💥 Classical and local vector submodules was merge. `bs.vector[Left,Up,Front]` was replaced by `bs.vector.[x,y,z]`
- 💥 The project got a fresh new identity: Bookshelf. It imply that all the namespace, score, entities tag and other names containing the "glib" prefix was changed to "bs". This is a breaking change, but it should be easy to fix in your projects with a simple "search & replace" action.
- (WIP) Improved documentation style (inspired from Numpy doc)
- 💥 `bs.math:log` now give output shifted by 3 digits (3,14159 -> 3141) instead of 4 to be more consistant with other mathematical functions.
- 💥 Merged LGdir and BiomeDetector systems in `bs.example` module
- 💥 Merged all `bs.math` submodules. All math function are now at the root of the `bs.math` namespace.
- 💥 Moved `bs.health:safe_kill` to `bs.core:entity/safe_kill`
- 💥 Moved `bs.core:default_entity` to `bs.core:entity/summon`
- 💥 Refactored `bs.biome` variable names to match the development standards:
  - (score) `bs.temperature` $\rightarrow$ `bs.biome.temp`
  - (tag) `bs.canRain` $\rightarrow$ `bs.biome.CanRain`
  - (tag) `bs.canSnow` $\rightarrow$ `bs.biome.CanSnow`
- 💥 `bs.location:get_relative` and `bs.location:add` now use `bs.loc.[rx,ry,rz]` scores
- 💥 "accuracy" folders was renamed to "scale" and files inside was renamed "10-X" to "X"

### 🐛 Bug fixes

- Orientation and location getters was not clearing the default entity, which sometimes cause bugs in systems that try to get the entity at the same location.
- 💥 The `bs.math:sin` function was actually cmputing -sin(x) instead of sin(x).
- Fixed `bs.math:common/log`, `bs.math:log10`, `bs.math:log2` and `bs.math:loga` functions
- Fixed `bs.math:arctan` function
- Fixed `bs.move:by_local_vector` function
- Fixed `bs.bitwise:two_complement` function
- Fixed `bs.location:spread` and `bs.location:spread/scale/3` - Thanks to A2va in https://github.com/Gunivers/Bookshelf/pull/41
- Fixed `bs.view` modules