# Spawn block display
# @batch bs.block

data modify storage bs:in block.spawn_block_display.type set value "minecraft:bookshelf"
data modify storage bs:in block.spawn_block_display.extra_nbt set value {Tags:["packtest"]}
function #bs.block:spawn_block_display

assert entity @e[type=minecraft:block_display,tag=packtest] inside
