---
html_theme.sidebar_secondary.remove: true
---

# 🏷️Nomenclature

Bookshelf respects a certain tree structure which can be similar to the Java packages, called "modules" in this project. The added features must therefore be positioned in these various folders (corresponding to a namespaces) according to their usefulness. If no namespace folder (i.e. module) seems appropriate for the addition of a feature, it can be considered to add a new namespace. A category must respect a particular structure:

-  File and folders use the snake_case convention. Example: `my_function`
-  Score objectives use the camelCase convention with the `bs.` prefix. Example: `bs.myScore`
-  Fake players use the SCREAMING_SNAKE_CASE convention. Exemple: `MY_FAKE_PLAYER`. Add `#` before the name to hide the fake player in the scoreboard when there is no point to let it visible.
-  Tags use the UpperCamelCase convention with the `bs.` prefix. Example: `bs.MyTag`
-  A feature is equal to an unique utility, so we should not hesitate to decompose its features in MVP in order to make it more readable and to promote the reusability of the MVP. In addition to these few constraints, the contributor is free to organize his files as he wishes as long as it remains coherent and understandable, and it respect the global structure detailed below.
-  In some folders are files nammed "`_`". The main purpose of these files is to reorganize the display of Bookshelf folders during the auto-completion proposed by Brigadier. Thus, the first proposals are not all the files of a particular folder but the folder itself, followed only by "`_`" (wich can be easily removed to allow to press 'tab' again and continue to explore the tree structure). These files can be added in all folders, and if possible, they may describe and/or represent, the category in question or a redirection to the section of the documentation related to the category.