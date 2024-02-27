data modify storage bs:data block.process set from storage bs:data block.fill_type[0]
data remove storage bs:data block.process.unqueue
data remove storage bs:data block.fill_type[0]

execute store result score #block.x bs.data run data get storage bs:data block.process.x
execute store result score #block.y bs.data run data get storage bs:data block.process.y
execute store result score #block.z bs.data run data get storage bs:data block.process.z
execute store result score #block.i bs.data run data get storage bs:data block.process.limit
execute store result score #block.min_x bs.data run data get storage bs:data block.process.min_x
execute store result score #block.min_y bs.data run data get storage bs:data block.process.min_y
execute store result score #block.min_z bs.data run data get storage bs:data block.process.min_z
execute store result score #block.max_x bs.data run data get storage bs:data block.process.max_x
execute store result score #block.max_y bs.data run data get storage bs:data block.process.max_y
execute store result score #block.max_z bs.data run data get storage bs:data block.process.max_z
function bs.block:process/fill_type/recurse/init with storage bs:data block.process

execute if data storage bs:data block.fill_type[0].unqueue run function bs.block:process/fill_type/recurse/unqueue
