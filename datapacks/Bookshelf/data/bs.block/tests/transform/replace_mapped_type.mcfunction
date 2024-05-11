# Replace the block type from the type_set while trying to conserve the state
# @batch bs.block

setblock ~ ~ ~ minecraft:spruce_stairs[facing=west,half=top,shape=straight,waterlogged=false]
function #bs.block:get_block

function #bs.block:replace_mapped_type {type:"minecraft:oak_planks",type_set:[{category:0,index:0,type:"minecraft:oak_planks"},{category:0,index:1,type:"minecraft:oak_stairs"},{category:1,index:0,type:"minecraft:spruce_planks"},{category:1,index:1,type:"minecraft:spruce_stairs"}]}
assert data storage bs:out block{ block: "minecraft:oak_stairs[facing=west,half=top,shape=straight,waterlogged=false,]" }

function #bs.block:replace_mapped_type {type:"minecraft:spruce_planks",type_set:[{category:0,index:0,type:"minecraft:oak_planks"},{category:0,index:1,type:"minecraft:oak_stairs"},{category:1,index:0,type:"minecraft:spruce_planks"},{category:1,index:1,type:"minecraft:spruce_stairs"}]}
assert data storage bs:out block{ block: "minecraft:spruce_stairs[facing=west,half=top,shape=straight,waterlogged=false,]" }
