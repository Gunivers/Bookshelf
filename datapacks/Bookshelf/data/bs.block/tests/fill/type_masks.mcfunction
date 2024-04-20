# Fill a region with a specific block
# @batch bs.block

fill ~ ~ ~ ~ ~1 ~ dirt
data modify storage bs:in block.fill_type set value {type:"minecraft:grass_block",masks:[{block:"minecraft:dirt"},{block:"minecraft:air",y:1}]}
execute summon minecraft:marker run data modify storage bs:in block.fill_type.from set from entity @s Pos
execute positioned ~ ~1 ~ summon minecraft:marker run data modify storage bs:in block.fill_type.to set from entity @s Pos
function #bs.block:fill_type

assert block ~ ~ ~ minecraft:dirt
assert block ~ ~1 ~ minecraft:grass_block
