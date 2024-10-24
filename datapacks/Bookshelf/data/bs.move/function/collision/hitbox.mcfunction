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

# compute a bounding box that encompasses all passengers
function #bs.hitbox:get_entity

execute store result score #h bs.ctx run data get storage bs:out hitbox.height 1000
execute store result score #w bs.ctx run data get storage bs:out hitbox.width 500
execute store result score #s bs.ctx run data get storage bs:out hitbox.scale 1000
execute store result score #y bs.ctx run data get entity @s Pos[1] 1000

scoreboard players operation #h bs.ctx *= #s bs.ctx
scoreboard players operation #w bs.ctx *= #s bs.ctx
scoreboard players operation #y bs.ctx -= #move.y bs.data
scoreboard players operation #y bs.ctx *= 1000 bs.const
scoreboard players operation #h bs.ctx += #y bs.ctx
execute store result score #move.sh bs.data run scoreboard players operation #move.h bs.data > #h bs.ctx
execute store result score #move.sw bs.data run scoreboard players operation #move.w bs.data > #w bs.ctx

execute on passengers run function bs.move:collision/hitbox
