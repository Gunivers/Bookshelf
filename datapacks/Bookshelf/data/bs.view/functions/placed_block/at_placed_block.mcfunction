# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 24/01/2024 (1.20.4)
# Last modification: 30/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#placed-block
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

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
