---
html_theme.sidebar_secondary.remove: true
---

# 🏷️Nomenclature

Bookshelf respects a certain tree structure which can be similar to the Java packages, called "modules" in this project. The added features must therefore be positioned in these various folders (corresponding to a namespaces) according to their usefulness. If no namespace folder (i.e. module) seems appropriate for the addition of a feature, it can be considered to add a new namespace. A category must respect a particular structure:

-  Score objectives use the snake_case with an indication of the path to the module as prefix.

   Example: `bs.module.my_objective`
-  Fake players use the snake_case convention with an indication of the path to the module as prefix. Each score should be prefixed by either `#` for temporary scores or `$` for important ones.

   Exemple: `$module.debug` or `#module.tmp`. 
-  Tags use the snake_case convention with an indication of the path to the module as prefix.

   Example: `bs.module.my_tag`
-  A feature is equal to an unique utility, so you should not hesitate to decompose its features in order to make it more readable and to promote reusability. In addition to these few constraints, you are free to organize your files as you wish as long as it remains coherent, understandable, and it respects the global structure detailed below.