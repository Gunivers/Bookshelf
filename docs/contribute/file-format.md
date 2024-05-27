---
html_theme.sidebar_secondary.remove: true
---

# 📄 File format

Each function of Bookshelf should have a header to indicate the license.
If the function is the first function called in the feature (functions directly called by the function tag), the header should also specified the link to the feature documentation.

Header to put at the beggining of each function:
```
# ------------------------------------------------------------------------------------------------------------
# Copyright (c) <YEAR> Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
#
# Documentation of the feature: <DOCUMENTATION>
# ------------------------------------------------------------------------------------------------------------
```

The `<YEAR>` placeholder must be fill by the current year and the `<DOCUMENTATION>` placeholder by the link to the documentation of this specific feature.

If the function is not a feature, the header looks like this:
```
# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------
```

If a Bookshelf contributor forgot to put a header at the beggining of a function, the CI/CD pipeline will reject the merge of the contribution in Bookshelf.
To be sure the code meets the minimal requirements, see the [contribution validation page](project:contribution-validation.md).
