# Remove given properties
# @batch bs.block

setblock ~ ~ ~ minecraft:stone_stairs[facing=west,half=top,shape=straight,waterlogged=false]
function #bs.block:get_block
function #bs.block:remove_properties {properties:[{name:"facing"},{name:"shape"}]}

assert data storage bs:out block{ block: "minecraft:stone_stairs[half=top,waterlogged=false,]", type: "minecraft:stone_stairs", state: "[half=top,waterlogged=false,]", properties: { half: "top", waterlogged: "false" } }
