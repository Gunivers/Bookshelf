# is_in_block works with all kind of hitboxes
# @batch bs.hitbox

setblock 0 0 0 minecraft:stone_slab
execute positioned 0.5 0.5 0.5 if function #bs.hitbox:is_in_block run fail "Should not be inside the slab"
setblock 0 0 0 minecraft:bookshelf
execute positioned 0.5 0.5 0.5 unless function #bs.hitbox:is_in_block run fail "Should be inside the block"
