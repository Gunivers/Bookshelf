# 🔧 Changelog

## (WIP) 1.19 - 2.0 - Bookshelf

```{admonition} Breaking changes
:class: warning

This version contain breaking changes. In the following changelog, they are identified by the 💥 emoji.
```

### ➕ Addition

- There is now a changelog! 🎉
- (WIP) Added unit tests to ensure that the library is working as expected before each release.

### 🔁 Tweaks

- 💥 The project got a fresh new identity: Bookshelf. It imply that all the namespace, score, entities tag and other names containing the "glib" prefix was changed to "bs". This is a breaking change, but it should be easy to fix in your projects with a simple "search & replace" action.
- (WIP) Improved documentation style (inspired from Numpy doc)
- 💥 `bs.math:common/log` now give output shifted by 3 digits (3,14159 -> 3141) instead of 4 to be more consistant with other mathematical functions.

### 🐛 Bug fixes

- Orientation and location getters was not clearing the default entity, which sometimes cause bugs in systems that try to get the entity at the same location.
- 💥 The `bs.math:trig/sin` function was actually cmputing -sin(x) instead of sin(x).
- Fixed all logarithm function (in `bs.math:common/`)