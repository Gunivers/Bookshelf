# Get block data from location
# @batch bs.block

setblock ~ ~ ~ minecraft:stone_stairs[facing=west,half=top,shape=straight,waterlogged=false]
function #bs.block:get_block

assert data storage bs:out block{ block: "minecraft:stone_stairs[facing=west,half=top,shape=straight,waterlogged=false,]", type: "minecraft:stone_stairs", state: "[facing=west,half=top,shape=straight,waterlogged=false,]", properties: { facing: "west", half: "top", shape: "straight", waterlogged: "false" } }

setblock ~ ~ ~ minecraft:campfire
function #bs.block:get_block

assert data storage bs:out block.block
