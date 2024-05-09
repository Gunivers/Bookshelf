# Callback is run at the placed block
# @batch bs.view
# @dummy

fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air
setblock ~ ~1 ~1 minecraft:sponge
function #bs.view:at_block_placement {run:"setblock ~ ~ ~ minecraft:bookshelf",with:{}}
assert block ~ ~1 ~ minecraft:bookshelf
