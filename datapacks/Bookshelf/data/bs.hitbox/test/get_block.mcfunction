# get_block always returns a shape
# @batch bs.hitbox

setblock ~ ~ ~ minecraft:stone_slab[type=bottom]
function #bs.hitbox:get_block
assert data storage bs:out hitbox{ shape: [[0.0, 0.0, 0.0, 16.0, 8.0, 16.0]] }

setblock ~ ~ ~ minecraft:stone_slab[type=top]
function #bs.hitbox:get_block
assert data storage bs:out hitbox{ shape: [[0.0, 8.0, 0.0, 16.0, 16.0, 16.0]] }
