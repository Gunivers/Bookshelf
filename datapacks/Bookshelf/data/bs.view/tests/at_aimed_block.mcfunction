# Callback is run at the targeted block
# @batch bs.view
# @dummy

setblock ~ ~1 ~1 minecraft:sponge
function #bs.view:at_aimed_block {run:"setblock ~ ~ ~ minecraft:bookshelf",with:{}}
assert block ~ ~1 ~1 minecraft:bookshelf
