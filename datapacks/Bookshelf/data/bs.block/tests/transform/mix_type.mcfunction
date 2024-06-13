# Replace the block type using the mapping registry (mix mode)
# @batch bs.block

setblock ~ ~ ~ minecraft:mossy_stone_bricks
function #bs.block:get_block

function #bs.block:mix_type {type:"minecraft:cobblestone",mapping_registry:"bs.shapes"}
assert data storage bs:out block{ block: "minecraft:mossy_cobblestone" }

setblock ~ ~ ~ minecraft:mossy_cobblestone
function #bs.block:get_block

function #bs.block:mix_type {type:"minecraft:stone_bricks",mapping_registry:"bs.shapes"}
assert data storage bs:out block{ block: "minecraft:mossy_stone_bricks" }
