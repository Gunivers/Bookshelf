# Replace property values
# @batch bs.block

setblock ~ ~ ~ minecraft:stone_stairs[facing=west,half=top,shape=straight,waterlogged=false]
function #bs.block:get_block
function #bs.block:replace_properties {properties:[{name:"facing",value:"north"}]}

assert data storage bs:out block{ block: "minecraft:stone_stairs[facing=north,half=top,shape=straight,waterlogged=false]", type: "minecraft:stone_stairs", state: "[facing=north,half=top,shape=straight,waterlogged=false]", properties: { facing: "north", half: "top", shape: "straight", waterlogged: "false" } }
