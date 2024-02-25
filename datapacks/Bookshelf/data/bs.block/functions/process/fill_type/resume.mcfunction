data modify storage bs:data block.process set from storage bs:data block.fill_type[-1]
data remove storage bs:data block.fill_type[-1]

execute store result score #block.i bs.data run data get storage bs:data block.process.limit
execute store result score #block.x bs.data run data get storage bs:data block.process.from[0]
execute store result score #block.y bs.data run data get storage bs:data block.process.from[1]
execute store result score #block.z bs.data run data get storage bs:data block.process.from[2]
execute store result score #block.nx bs.data run data get storage bs:data block.process.to[0]
execute store result score #block.ny bs.data run data get storage bs:data block.process.to[1]
execute store result score #block.nz bs.data run data get storage bs:data block.process.to[2]

execute store result score #block.px bs.data run data get storage bs:data block.process.x
execute store result score #block.py bs.data run data get storage bs:data block.process.y
execute store result score #block.pz bs.data run data get storage bs:data block.process.z
scoreboard players operation #block.px bs.data += #block.nx bs.data
scoreboard players operation #block.py bs.data += #block.ny bs.data
scoreboard players operation #block.pz bs.data += #block.nz bs.data
execute store result entity B5-0-0-0-1 Pos[0] double 1 run scoreboard players operation #block.px bs.data -= #block.x bs.data
execute store result entity B5-0-0-0-1 Pos[1] double 1 run scoreboard players operation #block.py bs.data -= #block.y bs.data
execute store result entity B5-0-0-0-1 Pos[2] double 1 run scoreboard players operation #block.pz bs.data -= #block.z bs.data

execute at B5-0-0-0-1 run function bs.block:process/fill_type/loop with storage bs:data block.process
execute in minecraft:overworld run tp B5-0-0-0-1 0 0 0
