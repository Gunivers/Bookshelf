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
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#absolute-min
# ------------------------------------------------------------------------------------------------------------

scoreboard players operation $vector.abs_min bs.out = $vector.abs_min.0 bs.in
execute if predicate bs.vector:abs_min/check1 run scoreboard players operation $vector.abs_min bs.out = $vector.abs_min.1 bs.in
execute if predicate bs.vector:abs_min/check2 run scoreboard players operation $vector.abs_min bs.out = $vector.abs_min.2 bs.in
return run scoreboard players get $vector.abs_min bs.out
