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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#custom-behaviors
# ------------------------------------------------------------------------------------------------------------

scoreboard players operation $id.suid bs.in = @s bs.link.to
execute at @e[predicate=bs.id:suid_equal,sort=arbitrary,limit=1] run function #bs.position:get_pos_and_rot {scale:1000}

scoreboard players operation #link.origin.x bs.data = @s bs.pos.x
scoreboard players operation #link.origin.y bs.data = @s bs.pos.y
scoreboard players operation #link.origin.z bs.data = @s bs.pos.z
scoreboard players operation #link.origin.h bs.data = @s bs.rot.h
scoreboard players operation #link.origin.v bs.data = @s bs.rot.v

execute store result score @s bs.pos.x run data get entity @s Pos[0] 1000
execute store result score @s bs.pos.y run data get entity @s Pos[1] 1000
execute store result score @s bs.pos.z run data get entity @s Pos[2] 1000
execute store result score @s bs.rot.h run data get entity @s Rotation[0] 1000
execute store result score @s bs.rot.v run data get entity @s Rotation[1] 1000
