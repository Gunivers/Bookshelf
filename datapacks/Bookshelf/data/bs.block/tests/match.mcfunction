# Check that a block matches an other one
# @batch bs.block

setblock ~ ~ ~ minecraft:bookshelf
data modify storage bs:in block.match.block set value "minecraft:bookshelf"
execute unless function #bs.block:match run fail "Fail to match the given block"
