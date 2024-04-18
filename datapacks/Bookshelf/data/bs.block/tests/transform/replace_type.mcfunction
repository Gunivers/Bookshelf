# Replace the block type while trying to conserve the state
# @batch bs.block

setblock ~ ~ ~ minecraft:stone_stairs[facing=west,half=top,shape=straight,waterlogged=false]
function #bs.block:get_block

function #bs.block:replace_type {type:"minecraft:spruce_stairs"}
assert data storage bs:out block{ block: "minecraft:spruce_stairs[facing=west,half=top,shape=straight,waterlogged=false]", type: "minecraft:spruce_stairs", state: "[facing=west,half=top,shape=straight,waterlogged=false]", properties: { facing: "west", half: "top", shape: "straight", waterlogged: "false" } }

function #bs.block:replace_type {type:"minecraft:stone"}
assert data storage bs:out block{ block: "minecraft:stone", type: "minecraft:stone", state: "", properties: {} }
