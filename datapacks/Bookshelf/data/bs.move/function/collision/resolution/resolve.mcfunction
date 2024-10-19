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

# compute the collision point and remaining velocity
scoreboard players operation $move.vel_remaining.x bs.data = #move.vx bs.data
scoreboard players operation $move.vel_remaining.y bs.data = #move.vy bs.data
scoreboard players operation $move.vel_remaining.z bs.data = #move.vz bs.data
scoreboard players operation $move.vel_remaining.x bs.data *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.y bs.data *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.z bs.data *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.x bs.data /= -1000 bs.const
scoreboard players operation $move.vel_remaining.y bs.data /= -1000 bs.const
scoreboard players operation $move.vel_remaining.z bs.data /= -1000 bs.const

# move the entity out of the collision
execute if score $move.hit_face bs.data matches 5 run scoreboard players add #move.x bs.data 1
execute if score $move.hit_face bs.data matches 4 run scoreboard players remove #move.x bs.data 1
execute if score $move.hit_face bs.data matches 3 run scoreboard players add #move.z bs.data 1
execute if score $move.hit_face bs.data matches 2 run scoreboard players remove #move.z bs.data 1
execute if score $move.hit_face bs.data matches 1 run scoreboard players add #move.y bs.data 1
execute if score $move.hit_face bs.data matches 0 run scoreboard players remove #move.y bs.data 1
execute store result storage bs:ctx x double .001 run scoreboard players operation #move.x bs.data -= $move.vel_remaining.x bs.data
execute store result storage bs:ctx y double .001 run scoreboard players operation #move.y bs.data -= $move.vel_remaining.y bs.data
execute store result storage bs:ctx z double .001 run scoreboard players operation #move.z bs.data -= $move.vel_remaining.z bs.data
function bs.move:collision/resolution/teleport with storage bs:ctx
scoreboard players operation $move.vel_remaining.x bs.data += #move.vx bs.data
scoreboard players operation $move.vel_remaining.y bs.data += #move.vy bs.data
scoreboard players operation $move.vel_remaining.z bs.data += #move.vz bs.data

$function bs.move:collision/resolution/callback/$(type) with storage bs:data move
