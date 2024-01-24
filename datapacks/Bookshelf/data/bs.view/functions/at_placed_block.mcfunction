# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 24/01/2024 (1.20.4)
# Last modification: 24/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#placed-block
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# run the raycast
data modify storage bs:data view.raycast set from storage bs:in raycast
data modify storage bs:in raycast merge value {block_collision:true,entity_collision:true}
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run
data modify storage bs:in raycast set from storage bs:data view.raycast

# run the command at the block before the block that was found or return early
execute if score #raycast.distance bs.data matches 2147483647 run return 0
execute store result score #view.x1 bs.data run data get storage bs:out raycast.targeted_block[0]
execute store result score #view.y1 bs.data run data get storage bs:out raycast.targeted_block[1]
execute store result score #view.z1 bs.data run data get storage bs:out raycast.targeted_block[2]
execute store result score #view.x2 bs.data run data get storage bs:out raycast.hit_normal[0]
execute store result score #view.y2 bs.data run data get storage bs:out raycast.hit_normal[1]
execute store result score #view.z2 bs.data run data get storage bs:out raycast.hit_normal[2]
execute store result entity B5-0-0-0-1 Pos[0] double 1 run scoreboard players operation #view.x1 bs.data += #view.x2 bs.data
execute store result entity B5-0-0-0-1 Pos[1] double 1 run scoreboard players operation #view.y1 bs.data += #view.y2 bs.data
execute store result entity B5-0-0-0-1 Pos[2] double 1 run scoreboard players operation #view.z1 bs.data += #view.z2 bs.data
$execute at B5-0-0-0-1 run $(run)
execute in minecraft:overworld run tp B5-0-0-0-1 0 0 0
