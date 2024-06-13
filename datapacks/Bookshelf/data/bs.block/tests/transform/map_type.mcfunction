# Replace the block type from the type_set while trying to conserve the state
# @batch bs.block

setblock ~ ~ ~ minecraft:spruce_stairs[facing=west,half=top,shape=straight,waterlogged=false]
function #bs.block:get_block

function #bs.block:map_type {type:"minecraft:oak_planks",mapping_registry:"bs.shapes"}
assert data storage bs:out block{ block: "minecraft:oak_stairs[facing=west,half=top,shape=straight,waterlogged=false,]" }

function #bs.block:map_type {type:"minecraft:spruce_planks",mapping_registry:"bs.shapes"}
assert data storage bs:out block{ block: "minecraft:spruce_stairs[facing=west,half=top,shape=straight,waterlogged=false,]" }
