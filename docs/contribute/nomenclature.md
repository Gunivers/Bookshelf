---
html_theme.sidebar_secondary.remove: true
---

# 🏷️ Nomenclature

Bookshelf respects certain naming conventions in order to reduce the effort needed to read and understand code.

- The storage use the snake_case convention and is limited to what is defined in the shared data section.

  Example: `bs:data <module>.<feature>`
- Objectives use the snake_case convention and must be prefixed with `bs.`.

  Example: `bs.my_objective`
- Tags use the snake_case convention and must be prefixed with an indication of the path to the module.

  Example: `bs.<module>.my_tag`
- Fake players use the snake_case convention and must be prefixed with an indication of the path to the module without the `bs.`. Each score should also be prefixed by either `#` for temporary scores or `$` for important ones.

  Example: `$<module>.debug` or `#<module>.any`
- Functions use the snake_case convention. A few names are reserved for special functions at the root of each module: `__help__`, `__load__`, `__tick__`, and `__unload__`.
