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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#get-distance
# ------------------------------------------------------------------------------------------------------------

execute as B5-0-0-0-1 run function bs.position:get/position/ctx
$execute store result score #position.get_distance.x1 bs.data run data get storage bs:ctx _[0] $(scale)
$execute store result score #position.get_distance.y1 bs.data run data get storage bs:ctx _[1] $(scale)
$execute store result score #position.get_distance.z1 bs.data run data get storage bs:ctx _[2] $(scale)
$execute store result score #position.get_distance.x2 bs.data run data get entity @s Pos[0] $(scale)
$execute store result score #position.get_distance.y2 bs.data run data get entity @s Pos[1] $(scale)
$execute store result score #position.get_distance.z2 bs.data run data get entity @s Pos[2] $(scale)

scoreboard players operation #position.get_distance.x1 bs.data -= #position.get_distance.x2 bs.data
scoreboard players operation #position.get_distance.y1 bs.data -= #position.get_distance.y2 bs.data
scoreboard players operation #position.get_distance.z1 bs.data -= #position.get_distance.z2 bs.data
scoreboard players operation #position.get_distance.x1 bs.data *= #position.get_distance.x1 bs.data
scoreboard players operation #position.get_distance.y1 bs.data *= #position.get_distance.y1 bs.data
scoreboard players operation #position.get_distance.z1 bs.data *= #position.get_distance.z1 bs.data

scoreboard players operation #position.get_distance.x1 bs.data += #position.get_distance.y1 bs.data
execute store result score $position.get_distance_squared_ata bs.out run return run scoreboard players operation #position.get_distance.x1 bs.data += #position.get_distance.z1 bs.data
