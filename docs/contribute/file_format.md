---
html_theme.sidebar_secondary.remove: true
---

# 📄 File format

All the functions of Bookshelf implement documentation to
describe for other developers as well as for users what the function is
for and how to use it. This is what this one looks like:

```
# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       :
# Contributors  : 

# Version: (system version)
# Created: jj/mm/yyyy (minecraft version)
# Last verification: jj/mm/yyyy (minecraft version)
# Last modification: jj/mm/yyyy (minecraft version)

# Original path : bs.path:to/function
# Documentation : https://link.to/documentation/page
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------
```

We can find various information about the function itself (the example is not exhaustive), of which the following is a complete list:

| Field | Description |
|:-----:|:-----------:|
| Authors | The list of authors of the function. |
| Contributors | The list of contributors to the function.<br> A contributor is someone who helps to create the function<br> without developing it (the one who gives a track to realize the function<br> or the one who fixes a bug for example). |
| MC Version | Version of Minecraft for which the system was created. |
| Last check | Version of Minecraft until which the system is certified functional. |
| Original path | The path to the function so that it can be copied to a /function command. |
| Documentation | Link to the documentation of the function |
| Note | Allows you to provide additional information about the function<br> such as a description of what the function does, how to use it if the use<br> is particular, the behaviors of the function or the side effects of its use. |