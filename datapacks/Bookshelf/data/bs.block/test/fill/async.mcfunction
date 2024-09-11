# Fill a region with a specific block one by one
# @batch bs.block

data modify storage bs:in block.fill_block set value {block:"minecraft:stone",from:"~ ~ ~",to:"~1 ~ ~",limit:1}
function #bs.block:fill_block

assert block ~ ~ ~ minecraft:stone
assert not block ~1 ~ ~ minecraft:stone
await delay 1t
assert block ~1 ~ ~ minecraft:stone
