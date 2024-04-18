# is_in_block works with all kind of hitboxes
# @batch bs.hitbox

setblock ~ ~ ~ minecraft:stone_slab
execute positioned ~.5 ~.5 ~.5 if function #bs.hitbox:is_in_block run fail "Should not be inside the slab"
setblock ~ ~ ~ minecraft:bookshelf
execute positioned ~.5 ~.5 ~.5 unless function #bs.hitbox:is_in_block run fail "Should be inside the block"
