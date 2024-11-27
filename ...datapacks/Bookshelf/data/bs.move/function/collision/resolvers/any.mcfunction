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

scoreboard players operation #move.ctime bs.data *= -1 bs.const
scoreboard players add #move.ctime bs.data 9999
execute store result storage bs:ctx x double -.0000001 store result score $move.vel_remaining.x bs.data run scoreboard players operation #move.vx bs.data *= #move.ctime bs.data
execute store result storage bs:ctx y double -.0000001 store result score $move.vel_remaining.y bs.data run scoreboard players operation #move.vy bs.data *= #move.ctime bs.data
execute store result storage bs:ctx z double -.0000001 store result score $move.vel_remaining.z bs.data run scoreboard players operation #move.vz bs.data *= #move.ctime bs.data
execute at @s run function bs.move:collision/utils/tp_relative with storage bs:ctx
$function bs.move:collision/resolvers/$(resolver) with storage bs:data move
