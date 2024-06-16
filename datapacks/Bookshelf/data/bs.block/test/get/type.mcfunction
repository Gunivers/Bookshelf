# Get block type from location
# @batch bs.block

setblock ~ ~ ~ minecraft:stone_stairs[facing=west,half=top,shape=straight,waterlogged=false]
function #bs.block:get_type

assert data storage bs:out block{ block: "minecraft:stone_stairs", type: "minecraft:stone_stairs", state: "", properties: {} }
