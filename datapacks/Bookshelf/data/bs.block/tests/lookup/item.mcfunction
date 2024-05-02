# Lookup block by item
# @batch bs.block

function #bs.block:lookup_item {item:"minecraft:stone"}
assert data storage bs:out block{block:"minecraft:stone",type:"minecraft:stone"}

function #bs.block:lookup_item {item:"minecraft:carrot"}
assert data storage bs:out block{block:"minecraft:carrots",type:"minecraft:carrots"}
