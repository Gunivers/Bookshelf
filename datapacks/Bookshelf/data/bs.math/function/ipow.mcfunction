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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#power
# ------------------------------------------------------------------------------------------------------------

scoreboard players set $math.ipow bs.out 1
execute if score $math.ipow.y bs.in matches 1.. store result score #math.ipow.2 bs.data run scoreboard players operation #math.ipow.1 bs.data = $math.ipow.x bs.in
execute if score $math.ipow.y bs.in matches 2.. store result score #math.ipow.4 bs.data run scoreboard players operation #math.ipow.2 bs.data *= #math.ipow.2 bs.data
execute if score $math.ipow.y bs.in matches 4.. store result score #math.ipow.8 bs.data run scoreboard players operation #math.ipow.4 bs.data *= #math.ipow.4 bs.data
execute if score $math.ipow.y bs.in matches 8.. store result score #math.ipow.16 bs.data run scoreboard players operation #math.ipow.8 bs.data *= #math.ipow.8 bs.data
execute if score $math.ipow.y bs.in matches 16.. run scoreboard players operation #math.ipow.16 bs.data *= #math.ipow.16 bs.data

scoreboard players operation #math.ipow.y bs.data = $math.ipow.y bs.in
execute if score #math.ipow.y bs.data matches 16.. run scoreboard players operation $math.ipow bs.out *= #math.ipow.16 bs.data
execute if score #math.ipow.y bs.data matches 16.. run scoreboard players remove #math.ipow.y bs.data 16
execute if score #math.ipow.y bs.data matches 8.. run scoreboard players operation $math.ipow bs.out *= #math.ipow.8 bs.data
execute if score #math.ipow.y bs.data matches 8.. run scoreboard players remove #math.ipow.y bs.data 8
execute if score #math.ipow.y bs.data matches 4.. run scoreboard players operation $math.ipow bs.out *= #math.ipow.4 bs.data
execute if score #math.ipow.y bs.data matches 4.. run scoreboard players remove #math.ipow.y bs.data 4
execute if score #math.ipow.y bs.data matches 2.. run scoreboard players operation $math.ipow bs.out *= #math.ipow.2 bs.data
execute if score #math.ipow.y bs.data matches 2.. run scoreboard players remove #math.ipow.y bs.data 2
execute if score #math.ipow.y bs.data matches 1.. run scoreboard players operation $math.ipow bs.out *= #math.ipow.1 bs.data

return run scoreboard players get $math.ipow bs.out
