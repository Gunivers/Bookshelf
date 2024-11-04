# Spawn falling block
# @batch bs.block

data modify storage bs:in block.spawn_falling_block.type set value "minecraft:bookshelf"
data modify storage bs:in block.spawn_falling_block.extra_nbt set value {Tags:["bs.packtest"]}
function #bs.block:spawn_falling_block

assert entity @e[type=minecraft:falling_block,tag=bs.packtest] inside
