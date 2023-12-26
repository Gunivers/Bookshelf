# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.2
# Created: 09/10/2023 (1.20.2)
# Last modification: 26/12/2023 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/raycast.html
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# get the unit vector [ux,uz,uz]
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^10 run tp B5-0-0-0-1 ~ ~ ~
execute store result score #raycast.ux bs.data run data get entity B5-0-0-0-1 Pos[0] 100
execute store result score #raycast.uy bs.data run data get entity B5-0-0-0-1 Pos[1] 100
execute store result score #raycast.uz bs.data run data get entity B5-0-0-0-1 Pos[2] 100

# compute the delta [dx,dy,dz] (distance to advance to the next grid intersection)
execute store result score #raycast.dx bs.data store result score #raycast.dy bs.data run scoreboard players set #raycast.dz bs.data 1000000
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players set #raycast.dx bs.data -1000000
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players set #raycast.dy bs.data -1000000
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players set #raycast.dz bs.data -1000000
scoreboard players operation #raycast.dx bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.dy bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.dz bs.data /= #raycast.uz bs.data

# compute the length [lx,ly,lz] (distance from the origin to the next grid intersection)
tp B5-0-0-0-1 ~ ~ ~
execute store result score #raycast.lx bs.data store result score #raycast.x bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #raycast.ly bs.data store result score #raycast.y bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #raycast.lz bs.data store result score #raycast.z bs.data run data get entity B5-0-0-0-1 Pos[2] 1000
scoreboard players operation #raycast.lx bs.data %= 1000 bs.const
scoreboard players operation #raycast.ly bs.data %= 1000 bs.const
scoreboard players operation #raycast.lz bs.data %= 1000 bs.const
scoreboard players operation #raycast.lx bs.data *= -1000 bs.const
scoreboard players operation #raycast.ly bs.data *= -1000 bs.const
scoreboard players operation #raycast.lz bs.data *= -1000 bs.const
scoreboard players operation #raycast.lx bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.ly bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.lz bs.data /= #raycast.uz bs.data
execute if score #raycast.lx bs.data matches ..0 run scoreboard players operation #raycast.lx bs.data += #raycast.dx bs.data
execute if score #raycast.ly bs.data matches ..0 run scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
execute if score #raycast.lz bs.data matches ..0 run scoreboard players operation #raycast.lz bs.data += #raycast.dz bs.data

# run the recursion loop
tag @s add bs.raycast.omit
scoreboard players set #raycast.distance bs.data 2147483647
execute store result score #raycast.bc bs.data run data get storage bs:in raycast.block_collision
execute store result score #raycast.ec bs.data run data get storage bs:in raycast.entity_collision
execute store result score #raycast.max_distance bs.data run data get storage bs:in raycast.max_distance 1000
data modify storage bs:out raycast set value {distance:0d,hit_point:[0d,0d,0d]}
execute align xyz run function bs.raycast:recurse/next with storage bs:in raycast
execute in minecraft:overworld run tp B5-0-0-0-1 0 0 0
tag @e[tag=bs.raycast.omit] remove bs.raycast.omit

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
