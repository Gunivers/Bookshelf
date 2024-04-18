# Set type at location
# @batch bs.block

setblock ~ ~ ~ minecraft:stone_stairs[facing=west,half=top,shape=straight,waterlogged=false]
data modify storage bs:in block.set_type set value {type:"minecraft:oak_stairs"}
function #bs.block:set_type

assert block ~ ~ ~ minecraft:oak_stairs[facing=west,half=top,shape=straight,waterlogged=false]
