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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/move.html
# ------------------------------------------------------------------------------------------------------------

forceload add -30000000 1600
execute unless entity B5-0-0-0-1 run summon minecraft:marker -30000000 0 1600 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"]}

scoreboard objectives add bs.in dummy [{"text":"BS ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]
scoreboard objectives add bs.ctx dummy [{"text":"BS ","color":"dark_gray"},{"text":"Context","color":"aqua"}]
scoreboard objectives add bs.vel.x dummy [{"text":"BS ","color":"dark_gray"},{"text":"Velocity X","color":"aqua"}]
scoreboard objectives add bs.vel.y dummy [{"text":"BS ","color":"dark_gray"},{"text":"Velocity Y","color":"aqua"}]
scoreboard objectives add bs.vel.z dummy [{"text":"BS ","color":"dark_gray"},{"text":"Velocity Z","color":"aqua"}]

scoreboard players set -1000 bs.const -1000
scoreboard players set -2 bs.const -2
scoreboard players set -1 bs.const -1
scoreboard players set 2 bs.const 2
scoreboard players set 500 bs.const 500
scoreboard players set 1000 bs.const 1000

execute store result score #result bs.data run worldborder get
execute if score #result bs.data matches 2147484.. run worldborder set 2147483 0
