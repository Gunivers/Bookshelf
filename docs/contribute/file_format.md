---
html_theme.sidebar_secondary.remove: true
---

# 📄 File format

Each feature of Bookshelf implements documentation to
provide additional information to developers and users. It must respect the following format:

```
# INFO ------------------------------------------------------------------------
# Copyright © <current year> Gunivers Community.

# Authors: <<author 1>, <author 2>, ...>
# Contributors: <<contributor 1>, <contributor 2>, ...>

# Version: <system version>
# Created: <jj>/<mm>/<yyyy> (<minecraft version>)
# Last modification: <jj>/<mm>/<yyyy> (<minecraft version>)

# Documentation: <https://link.to/documentation/page>
# Dependencies  : <<dependency 1>, <dependency 2>, ...>
# Note: <some notes>

# CODE ------------------------------------------------------------------------
```

We can find various information about the function itself (the example is not exhaustive), of which the following is a complete list:

| Field | Description |
|:-----:|:-----------:|
| Authors | The list of authors of the function. |
| Contributors | The list of contributors to the function.<br> A contributor is someone who helps to create the function<br> without developing it (the one who gives a track to realize the function<br> or the one who fixes a bug for example). |
| Version | Version version of the system, composed by 2 numbers: major version and minor version (`major.minor`). Minor is a change in a part of the code while major is a function overhaul.` |
| Created | Date and minecraft version in which the system was originally created (for history purpose) |
| Last modification | Date and minecraft version in which the system was modified for the last time |
| Documentation | Link to the documentation of the function |
| Dependencies | List of the dependencies |
| Note | Allows you to provide additional information about the function<br> such as a description of what the function does, how to use it if the use<br> is particular, the behaviors of the function or the side effects of its use. |
