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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#rounded-division
# ------------------------------------------------------------------------------------------------------------

execute store result score #math.divide.x bs.data run scoreboard players operation $math.divide bs.out = $math.divide.x bs.in
scoreboard players operation $math.divide bs.out /= $math.divide.y bs.in
execute store result score #math.divide.y bs.data run scoreboard players operation #math.divide.x bs.data %= $math.divide.y bs.in
scoreboard players operation #math.divide.y bs.data -= $math.divide.y bs.in
scoreboard players operation #math.divide.y bs.data *= -1 bs.const
execute if score #math.divide.y bs.data < #math.divide.x bs.data run scoreboard players add $math.divide bs.out 1
return run scoreboard players get $math.divide bs.out
