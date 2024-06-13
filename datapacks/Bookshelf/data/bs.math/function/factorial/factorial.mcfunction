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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#factorial
# ------------------------------------------------------------------------------------------------------------

# Note: Warning, this function does not work if the input is greater than 12 (because the result is greater than 2^31, the limit value of scoreboards)

execute if score $math.factorial.n bs.in matches 0 run return run scoreboard players set $math.factorial bs.out 1
execute if score $math.factorial.n bs.in matches 1.. store result score #math.factorial.i bs.data run scoreboard players operation $math.factorial bs.out = $math.factorial.n bs.in
execute if score $math.factorial.n bs.in matches 3.. run function bs.math:factorial/loop

return run scoreboard players get $math.factorial bs.out
