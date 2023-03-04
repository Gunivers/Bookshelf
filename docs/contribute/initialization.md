---
html_theme.sidebar_secondary.remove: true
---

# ⚙️ Initialization

In order to make use as easy as possible, each function must limit its dependencies as much as possible. It must then declare each of the variables it uses in the "INIT" part. It is not necessary to initialize variables used by child functions because child functions are supposed to initialize them. On the other hand, it is forbidden to neglect a declaration for any other reason (example: "Var1 is already used everywhere").

All the special scores doesn't need to be declared, they are automatically created by the lib. Also, in order to simplify arithmetical operations, the lib define plenty of constants stored on the score `bs.const`. You can find them in `bs.core/functions/import/constants.mcfunction`. All constants used in the lib must be defined in this file.
