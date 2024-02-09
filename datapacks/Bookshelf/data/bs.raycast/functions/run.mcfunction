# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.3
# Created: 09/10/2023 (1.20.2)
# Last modification: 09/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/raycast.html
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# get the starting position
tp B5-0-0-0-1 ~ ~ ~
execute store result score #raycast.lx bs.data store result score #raycast.x bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #raycast.ly bs.data store result score #raycast.y bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #raycast.lz bs.data store result score #raycast.z bs.data run data get entity B5-0-0-0-1 Pos[2] 1000

# get the unit vector [ux,uz,uz]
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^10 run tp B5-0-0-0-1 ~ ~ ~
execute store result score #raycast.ux bs.data run data get entity B5-0-0-0-1 Pos[0] 100
execute store result score #raycast.uy bs.data run data get entity B5-0-0-0-1 Pos[1] 100
execute store result score #raycast.uz bs.data run data get entity B5-0-0-0-1 Pos[2] 100

# run the raycast for blocks and/or entities
scoreboard players set #raycast.distance bs.data 2147483647
execute store result score #raycast.max_distance bs.data run data get storage bs:in raycast.max_distance 1000
data modify storage bs:out raycast set value {distance:0d,hit_point:[0d,0d,0d]}
execute if data storage bs:in raycast{block_collision:1b} run function bs.raycast:check/blocks
execute if data storage bs:in raycast{entity_collision:1b} run function bs.raycast:check/entities with storage bs:in raycast
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600

# return 0 early if no collision occured or compute output data then return 1
execute if score #raycast.distance bs.data matches 2147483647 run return 0
scoreboard players operation #raycast.ux bs.data *= #raycast.distance bs.data
scoreboard players operation #raycast.uy bs.data *= #raycast.distance bs.data
scoreboard players operation #raycast.uz bs.data *= #raycast.distance bs.data
scoreboard players operation #raycast.ux bs.data /= 1000 bs.const
scoreboard players operation #raycast.uy bs.data /= 1000 bs.const
scoreboard players operation #raycast.uz bs.data /= 1000 bs.const
execute store result storage bs:out raycast.hit_point[0] double .001 run scoreboard players operation #raycast.x bs.data += #raycast.ux bs.data
execute store result storage bs:out raycast.hit_point[1] double .001 run scoreboard players operation #raycast.y bs.data += #raycast.uy bs.data
execute store result storage bs:out raycast.hit_point[2] double .001 run scoreboard players operation #raycast.z bs.data += #raycast.uz bs.data
execute store result storage bs:out raycast.distance double .001 run scoreboard players get #raycast.distance bs.data
return 1
