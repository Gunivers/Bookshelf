# Check shape 2D zy plane
# @batch bs.generate

function #bs.generate:shape_2d {width:2,height:2,run:"setblock ~ ~ ~ minecraft:stone",with:{direction:"zy"}}

assert block ~ ~ ~ minecraft:stone
assert block ~ ~1 ~ minecraft:stone
assert block ~ ~ ~1 minecraft:stone
assert block ~ ~1 ~1 minecraft:stone
