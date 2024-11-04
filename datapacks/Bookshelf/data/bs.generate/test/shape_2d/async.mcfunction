# Go through each step one time per tick
# @batch bs.generate

function #bs.generate:shape_2d {width:1,height:2,run:"setblock ~ ~ ~ minecraft:stone",with:{limit:1}}

assert block ~ ~ ~ minecraft:stone
assert not block ~1 ~ ~ minecraft:stone
await delay 1t
assert block ~1 ~ ~ minecraft:stone
