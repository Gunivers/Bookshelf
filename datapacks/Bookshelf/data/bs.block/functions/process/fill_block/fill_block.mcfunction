# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.0
# Created: 15/01/2024 (1.20.4)
# Last modification: 15/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#fill
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:data block.process set from storage bs:in block.fill_block
execute unless data storage bs:data block.process.mode run data modify storage bs:data block.process.mode set value "replace"
execute unless data storage bs:data block.process.limit run data modify storage bs:data block.process.limit set value 4096
execute unless data storage bs:data block.process.masks run data modify storage bs:data block.process.masks set value []

function bs.block:process/masks/compile
execute store result score #block.i bs.data run data get storage bs:data block.process.limit
execute store result score #block.min_x bs.data run data get storage bs:data block.process.from[0]
execute store result score #block.min_y bs.data run data get storage bs:data block.process.from[1]
execute store result score #block.min_z bs.data run data get storage bs:data block.process.from[2]
execute store result score #block.max_x bs.data run data get storage bs:data block.process.to[0]
execute store result score #block.max_y bs.data run data get storage bs:data block.process.to[1]
execute store result score #block.max_z bs.data run data get storage bs:data block.process.to[2]
execute if score #block.min_x bs.data > #block.max_x bs.data run scoreboard players operation #block.min_x bs.data >< #block.max_x bs.data
execute if score #block.min_y bs.data > #block.max_y bs.data run scoreboard players operation #block.min_y bs.data >< #block.max_y bs.data
execute if score #block.min_z bs.data > #block.max_z bs.data run scoreboard players operation #block.min_z bs.data >< #block.max_z bs.data
execute store result storage bs:data block.process.min_x int 1 store result storage bs:data block.process.x int 1 store result score #block.x bs.data run scoreboard players get #block.min_x bs.data
execute store result storage bs:data block.process.min_y int 1 store result storage bs:data block.process.y int 1 store result score #block.y bs.data run scoreboard players get #block.min_y bs.data
execute store result storage bs:data block.process.min_z int 1 store result storage bs:data block.process.z int 1 store result score #block.z bs.data run scoreboard players get #block.min_z bs.data
execute store result storage bs:data block.process.max_x int 1 run scoreboard players get #block.max_x bs.data
execute store result storage bs:data block.process.max_y int 1 run scoreboard players get #block.max_y bs.data
execute store result storage bs:data block.process.max_z int 1 run scoreboard players get #block.max_z bs.data

function bs.block:process/fill_block/recurse/init with storage bs:data block.process
