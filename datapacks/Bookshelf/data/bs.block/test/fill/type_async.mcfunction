# Fill a region with a specific block one by one
# @batch bs.block

data modify storage bs:in block.fill_type set value {type:"minecraft:stone",limit:1}
execute summon minecraft:marker run data modify storage bs:in block.fill_type.from set from entity @s Pos
execute positioned ~1 ~ ~ summon minecraft:marker run data modify storage bs:in block.fill_type.to set from entity @s Pos
function #bs.block:fill_type

assert block ~ ~ ~ minecraft:stone
assert not block ~1 ~ ~ minecraft:stone
await delay 1t
assert block ~1 ~ ~ minecraft:stone
