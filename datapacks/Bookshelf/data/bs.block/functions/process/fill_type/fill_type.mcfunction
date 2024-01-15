execute unless data storage bs:in block.fill_type.mode run data modify storage bs:in block.fill_type.mode set value "replace"
execute unless data storage bs:in block.fill_type.limit run data modify storage bs:in block.fill_type.limit set value 4096
execute unless data storage bs:in block.fill_type.masks run data modify storage bs:in block.fill_type.masks set value []
data modify storage bs:data block.process set from storage bs:in block.fill_type

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

execute at B5-0-0-0-1 run function bs.block:process/fill_type/loop with storage bs:data block.process
execute in minecraft:overworld run tp B5-0-0-0-1 0 0 0
