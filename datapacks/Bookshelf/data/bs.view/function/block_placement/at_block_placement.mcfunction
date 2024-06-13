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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#block-placement
# ------------------------------------------------------------------------------------------------------------

# run the raycast at the entity eyes
execute at @s anchored eyes positioned ^ ^ ^ run function bs.raycast:run

# run the command at the block before the block that was found or return early
execute if score #raycast.distance bs.data matches 2147483647 run return fail
execute store result score #view.x1 bs.data run data get storage bs:out raycast.targeted_block[0]
execute store result score #view.y1 bs.data run data get storage bs:out raycast.targeted_block[1]
execute store result score #view.z1 bs.data run data get storage bs:out raycast.targeted_block[2]
execute store result score #view.x2 bs.data run data get storage bs:out raycast.hit_normal[0]
execute store result score #view.y2 bs.data run data get storage bs:out raycast.hit_normal[1]
execute store result score #view.z2 bs.data run data get storage bs:out raycast.hit_normal[2]
data modify storage bs:ctx _ set value [0d,0d,0d]
execute store result storage bs:ctx _[0] double 1 run scoreboard players operation #view.x1 bs.data += #view.x2 bs.data
execute store result storage bs:ctx _[1] double 1 run scoreboard players operation #view.y1 bs.data += #view.y2 bs.data
execute store result storage bs:ctx _[2] double 1 run scoreboard players operation #view.z1 bs.data += #view.z2 bs.data
tp B5-0-0-0-1 @s
data modify entity B5-0-0-0-1 Pos set from storage bs:ctx _
$execute at B5-0-0-0-1 run $(run)
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600
