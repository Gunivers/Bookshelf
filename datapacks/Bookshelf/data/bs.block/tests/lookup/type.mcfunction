# Lookup block by type
# @batch bs.block

function #bs.block:lookup_type {type:"minecraft:stone"}
assert data storage bs:out block{block:"minecraft:stone"}

function #bs.block:lookup_type {type:"minecraft:carrots"}
assert data storage bs:out block{block:"minecraft:carrots",item:"minecraft:carrot"}
