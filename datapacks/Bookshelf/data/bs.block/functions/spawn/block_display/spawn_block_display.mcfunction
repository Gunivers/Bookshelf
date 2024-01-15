data modify storage bs:ctx _ set value {}
data modify storage bs:ctx _ set from storage bs:in block.spawn_block_display.nbt
data modify storage bs:ctx _.block_state.Name set from storage bs:in block.spawn_block_display.type
data modify storage bs:ctx _.block_state.Properties set from storage bs:in block.spawn_block_display.properties

function bs.block:spawn/block_display/run with storage bs:ctx
