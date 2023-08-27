---
html_theme.sidebar_secondary.remove: true
---

# 🏷️Nomenclature

Bookshelf respects certain naming conventions in order to reduce the effort needed to read and understand code.

- Storage use the snake_case with an indication of the path to the module as prefix.

  Example: `bs:<module> my_data`
- Objectives use the snake_case with an indication of the path to the module as prefix.

  Example: `bs.<module>.my_objective`
- Tags use the snake_case convention with an indication of the path to the module as prefix.

  Example: `bs.<module>.my_tag`
- Fake players use the snake_case convention with an indication of the path to the module as prefix. Each score should be prefixed by either `#` for temporary scores or `$` for important ones. Prefixing the score with `bs.` is not needed there.

  Exemple: `$<module>.debug` or `#<module>.any`.
