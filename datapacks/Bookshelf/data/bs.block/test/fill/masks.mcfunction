# Fill a region with a specific block
# @batch bs.block

fill ~ ~ ~ ~ ~1 ~ dirt
data modify storage bs:in block.fill_block set value {block:"minecraft:grass_block",masks:[{block:"minecraft:dirt"},{block:"minecraft:air",y:1}]}
execute summon minecraft:marker run data modify storage bs:in block.fill_block.from set from entity @s Pos
execute positioned ~ ~1 ~ summon minecraft:marker run data modify storage bs:in block.fill_block.to set from entity @s Pos
function #bs.block:fill_block

assert block ~ ~ ~ minecraft:dirt
assert block ~ ~1 ~ minecraft:grass_block
