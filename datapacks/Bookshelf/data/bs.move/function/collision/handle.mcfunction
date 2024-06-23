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

# get starting position and velocity vector
tp B5-0-0-0-1 ~ ~ ~
execute store result score #move.x1 bs.data store result score #move.x bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #move.y1 bs.data store result score #move.y bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #move.z1 bs.data store result score #move.z bs.data run data get entity B5-0-0-0-1 Pos[2] 1000
execute store result score #move.x2 bs.data run data get entity @s Pos[0] 1000
execute store result score #move.y2 bs.data run data get entity @s Pos[1] 1000
execute store result score #move.z2 bs.data run data get entity @s Pos[2] 1000
execute store result score #move.vx bs.data run scoreboard players operation #move.x2 bs.data -= #move.x bs.data
execute store result score #move.vy bs.data run scoreboard players operation #move.y2 bs.data -= #move.y bs.data
execute store result score #move.vz bs.data run scoreboard players operation #move.z2 bs.data -= #move.z bs.data

# get width and height
scoreboard players set #move.h bs.data 0
scoreboard players set #move.w bs.data 0
function bs.move:collision/hitbox
scoreboard players operation #move.sh bs.data /= 1000 bs.const
scoreboard players operation #move.sw bs.data /= 1000 bs.const

# check for collisions and resolve them
tag @s add bs.move.omit
execute on passengers run tag @s add bs.move.omit
scoreboard players set #move.ctime bs.data 1000
execute if score #move.vx bs.data matches 0.. run function bs.move:collision/recurse/init/x_pos
execute if score #move.vy bs.data matches 0.. run function bs.move:collision/recurse/init/y_pos
execute if score #move.vz bs.data matches 0.. run function bs.move:collision/recurse/init/z_pos
execute if score #move.vx bs.data matches ..-1 run function bs.move:collision/recurse/init/x_neg
execute if score #move.vy bs.data matches ..-1 run function bs.move:collision/recurse/init/y_neg
execute if score #move.vz bs.data matches ..-1 run function bs.move:collision/recurse/init/z_neg
scoreboard players operation #move.x2 bs.data *= 1000 bs.const
scoreboard players operation #move.y2 bs.data *= 1000 bs.const
scoreboard players operation #move.z2 bs.data *= 1000 bs.const
execute store result score #move.rx bs.data run scoreboard players operation #move.x1 bs.data *= 1000 bs.const
execute store result score #move.ry bs.data run scoreboard players operation #move.y1 bs.data *= 1000 bs.const
execute store result score #move.rz bs.data run scoreboard players operation #move.z1 bs.data *= 1000 bs.const
execute store result score #move.b bs.data unless data storage bs:data move{blocks:0b}
execute store result score #move.e bs.data unless data storage bs:data move{entities:0b}
execute if score #move.e bs.data matches 1 if data storage bs:data move{entities:1b} run data modify storage bs:data move.entities set value "!bs.move.omit"
execute if score #move.vx bs.data matches 0.. at B5-0-0-0-1 align xyz run function bs.move:collision/recurse/x_pos
execute if score #move.vx bs.data matches ..-1 at B5-0-0-0-1 align xyz run function bs.move:collision/recurse/x_neg
tag @e[tag=bs.move.omit] remove bs.move.omit
execute if score #move.ctime bs.data matches 0..999 run function bs.move:collision/resolution/resolve with storage bs:data move
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600
