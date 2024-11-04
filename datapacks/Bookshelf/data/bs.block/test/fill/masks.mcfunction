# Fill a region with a specific block
# @batch bs.block

fill ~ ~ ~ ~ ~1 ~ dirt
data modify storage bs:in block.fill_block set value {block:"minecraft:grass_block",from:"~ ~ ~",to:"~ ~1 ~",masks:[{block:"minecraft:dirt"},{block:"minecraft:air",y:1}]}
function #bs.block:fill_block

assert block ~ ~ ~ minecraft:dirt
assert block ~ ~1 ~ minecraft:grass_block
