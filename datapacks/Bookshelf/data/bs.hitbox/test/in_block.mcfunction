# @batch bs.hitbox

await entity B5-0-0-0-1

## |TEST CASE|: Player should not be inside the slab
setblock ~ ~ ~ minecraft:stone_slab
execute positioned ~.5 ~.5 ~.5 if function #bs.hitbox:is_in_block run fail "Should not be inside the slab"

## |TEST CASE|: Player should be inside the block
setblock ~ ~ ~ minecraft:bookshelf
execute positioned ~.5 ~.5 ~.5 unless function #bs.hitbox:is_in_block run fail "Should be inside the block"
