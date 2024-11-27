# Fill a region with a specific block while trying to conserve states and NBTs
# @batch bs.block

setblock ~ ~ ~ minecraft:oak_stairs[facing=west]
setblock ~1 ~ ~ minecraft:oak_stairs[facing=south]

data modify storage bs:in block.fill_type set value {type:"minecraft:spruce_stairs",from:"~ ~ ~",to:"~1 ~ ~"}
function #bs.block:fill_type

assert block ~ ~ ~ minecraft:spruce_stairs[facing=west]
assert block ~1 ~ ~ minecraft:spruce_stairs[facing=south]
