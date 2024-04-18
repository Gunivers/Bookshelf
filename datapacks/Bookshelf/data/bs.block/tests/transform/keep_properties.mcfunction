# Only keep given properties
# @batch bs.block

setblock ~ ~ ~ minecraft:stone_stairs[facing=west,half=top,shape=straight,waterlogged=false]
function #bs.block:get_block
function #bs.block:keep_properties {properties:[{name:"facing"},{name:"shape"}]}

assert data storage bs:out block{ block: "minecraft:stone_stairs[facing=west,shape=straight]", type: "minecraft:stone_stairs", state: "[facing=west,shape=straight]", properties: { facing: "west", shape: "straight" } }
