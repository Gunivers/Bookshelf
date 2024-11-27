# Only keep given properties
# @batch bs.block

setblock ~ ~ ~ minecraft:stone_stairs[facing=west,half=top,shape=straight,waterlogged=false]
function #bs.block:get_block
function #bs.block:keep_properties {properties:[{name:"facing"},{name:"shape"}]}

assert data storage bs:out block{ block: "minecraft:stone_stairs[shape=straight,facing=west,]", type: "minecraft:stone_stairs", state: "[shape=straight,facing=west,]", properties: { facing: "west", shape: "straight" } }
