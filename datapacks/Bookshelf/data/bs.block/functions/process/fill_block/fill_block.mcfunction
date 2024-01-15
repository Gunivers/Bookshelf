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

execute unless data storage bs:in block.fill_block.mode run data modify storage bs:in block.fill_block.mode set value "replace"
execute unless data storage bs:in block.fill_block.limit run data modify storage bs:in block.fill_block.limit set value 4096
execute unless data storage bs:in block.fill_block.masks run data modify storage bs:in block.fill_block.masks set value []
data modify storage bs:data block.process set from storage bs:in block.fill_block

function bs.block:process/masks/compile
execute store result score #block.i bs.data run data get storage bs:data block.process.limit
execute store result score #block.x bs.data run data get storage bs:data block.process.from[0]
execute store result score #block.y bs.data run data get storage bs:data block.process.from[1]
execute store result score #block.z bs.data run data get storage bs:data block.process.from[2]
execute store result score #block.nx bs.data run data get storage bs:data block.process.to[0]
execute store result score #block.ny bs.data run data get storage bs:data block.process.to[1]
execute store result score #block.nz bs.data run data get storage bs:data block.process.to[2]

execute if score #block.x bs.data > #block.nx bs.data run scoreboard players operation #block.x bs.data >< #block.nx bs.data
execute if score #block.y bs.data > #block.ny bs.data run scoreboard players operation #block.y bs.data >< #block.ny bs.data
execute if score #block.z bs.data > #block.nz bs.data run scoreboard players operation #block.z bs.data >< #block.nz bs.data
execute store result entity B5-0-0-0-1 Pos[0] double 1 store result storage bs:data block.process.x int 1 run scoreboard players get #block.x bs.data
execute store result entity B5-0-0-0-1 Pos[1] double 1 store result storage bs:data block.process.y int 1 run scoreboard players get #block.y bs.data
execute store result entity B5-0-0-0-1 Pos[2] double 1 store result storage bs:data block.process.z int 1 run scoreboard players get #block.z bs.data
execute store result score #block.x bs.data run scoreboard players operation #block.nx bs.data -= #block.x bs.data
execute store result score #block.y bs.data run scoreboard players operation #block.ny bs.data -= #block.y bs.data
execute store result score #block.z bs.data run scoreboard players operation #block.nz bs.data -= #block.z bs.data

execute at B5-0-0-0-1 run function bs.block:process/fill_block/loop with storage bs:data block.process
execute in minecraft:overworld run tp B5-0-0-0-1 0 0 0
