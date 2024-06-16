# Set block at location
# @batch bs.block

setblock ~ ~ ~ minecraft:stone_stairs[facing=west,half=top,shape=straight,waterlogged=false]
data modify storage bs:in block.set_block set value {block:"minecraft:oak_stairs"}
function #bs.block:set_block

assert block ~ ~ ~ minecraft:oak_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
