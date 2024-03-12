# Callback is run at the placed block
# @batch bs.view
# @dummy

setblock ~ ~1 ~1 minecraft:sponge
function #bs.view:at_placed_block {run:"setblock ~ ~ ~ minecraft:bookshelf"}
assert block ~ ~1 ~ minecraft:bookshelf
