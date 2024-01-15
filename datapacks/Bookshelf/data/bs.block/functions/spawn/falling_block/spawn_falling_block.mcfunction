data modify storage bs:ctx _ set value {}
data modify storage bs:ctx _ set from storage bs:in block.spawn_falling_block.nbt
data modify storage bs:ctx _.BlockState.Name set from storage bs:in block.spawn_falling_block.type
data modify storage bs:ctx _.BlockState.Properties set from storage bs:in block.spawn_falling_block.properties

function bs.block:spawn/falling_block/run with storage bs:ctx
