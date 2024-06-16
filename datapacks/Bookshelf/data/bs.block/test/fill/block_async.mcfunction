# Fill a region with a specific block one by one
# @batch bs.block

data modify storage bs:in block.fill_block set value {block:"minecraft:stone",limit:1}
execute summon minecraft:marker run data modify storage bs:in block.fill_block.from set from entity @s Pos
execute positioned ~1 ~ ~ summon minecraft:marker run data modify storage bs:in block.fill_block.to set from entity @s Pos
function #bs.block:fill_block

assert block ~ ~ ~ minecraft:stone
assert not block ~1 ~ ~ minecraft:stone
await delay 1t
assert block ~1 ~ ~ minecraft:stone
