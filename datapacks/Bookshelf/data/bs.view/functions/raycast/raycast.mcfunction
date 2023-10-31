# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 09/10/2023 (1.20.2)
# Last modification: 09/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#raycast
# Dependencies:
# - bs.bitwise
# Note:

# CODE ------------------------------------------------------------------------

# get the unit vector
execute positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^1 run tp B5-0-0-0-1 ~ ~ ~
execute store result score #view.raycast.ux bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #view.raycast.uy bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #view.raycast.uz bs.data run data get entity B5-0-0-0-1 Pos[2] 1000

# compute the delta for [x,y,z] (distance to get to the next grid intersection)
execute store result score #view.raycast.dx bs.data store result score #view.raycast.dy bs.data run scoreboard players set #view.raycast.dz bs.data 1000000
scoreboard players operation #view.raycast.dx bs.data /= #view.raycast.ux bs.data
scoreboard players operation #view.raycast.dy bs.data /= #view.raycast.uy bs.data
scoreboard players operation #view.raycast.dz bs.data /= #view.raycast.uz bs.data
execute if score #view.raycast.dx bs.data matches ..-1 run scoreboard players operation #view.raycast.dx bs.data *= -1 bs.const
execute if score #view.raycast.dy bs.data matches ..-1 run scoreboard players operation #view.raycast.dy bs.data *= -1 bs.const
execute if score #view.raycast.dz bs.data matches ..-1 run scoreboard players operation #view.raycast.dz bs.data *= -1 bs.const

# compute the starting length for [x,y,z]
execute anchored eyes positioned ^ ^ ^ run tp B5-0-0-0-1 ~ ~ ~
execute store result score #view.raycast.x bs.data store result score #view.raycast.lx bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #view.raycast.y bs.data store result score #view.raycast.ly bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #view.raycast.z bs.data store result score #view.raycast.lz bs.data run data get entity B5-0-0-0-1 Pos[2] 1000
scoreboard players operation #view.raycast.lx bs.data %= -1000 bs.const
scoreboard players operation #view.raycast.ly bs.data %= -1000 bs.const
scoreboard players operation #view.raycast.lz bs.data %= -1000 bs.const
scoreboard players operation #view.raycast.lx bs.data *= -1000 bs.const
scoreboard players operation #view.raycast.ly bs.data *= -1000 bs.const
scoreboard players operation #view.raycast.lz bs.data *= -1000 bs.const
execute if score #view.raycast.lx bs.data matches 0 run scoreboard players set #view.raycast.lx bs.data 1000000
execute if score #view.raycast.ly bs.data matches 0 run scoreboard players set #view.raycast.ly bs.data 1000000
execute if score #view.raycast.lz bs.data matches 0 run scoreboard players set #view.raycast.lz bs.data 1000000
scoreboard players operation #view.raycast.lx bs.data /= #view.raycast.ux bs.data
scoreboard players operation #view.raycast.ly bs.data /= #view.raycast.uy bs.data
scoreboard players operation #view.raycast.lz bs.data /= #view.raycast.uz bs.data
execute if score #view.raycast.lx bs.data matches ..0 run scoreboard players operation #view.raycast.lx bs.data += #view.raycast.dx bs.data
execute if score #view.raycast.ly bs.data matches ..0 run scoreboard players operation #view.raycast.ly bs.data += #view.raycast.dy bs.data
execute if score #view.raycast.lz bs.data matches ..0 run scoreboard players operation #view.raycast.lz bs.data += #view.raycast.dz bs.data

# init and run the raycast loop
tag @s add bs.view.raycast.origin
scoreboard players set #view.raycast.distance bs.data 2147483647
execute anchored eyes positioned ^ ^ ^ align xyz run function bs.view:raycast/recurse/loop with storage bs:data view.raycast
execute as @e[tag=bs.view.raycast.hit] run function bs.view:raycast/collision/handle
tag @s remove bs.view.raycast.origin
tp B5-0-0-0-1 0 0 0
