# @batch bs.hitbox

await entity B5-0-0-0-1

## |TEST CASE|: Bottom stone slab
setblock ~ ~ ~ minecraft:stone_slab[type=bottom]
function #bs.hitbox:get_block
assert data storage bs:out hitbox{ shape: [[0.0, 0.0, 0.0, 16.0, 8.0, 16.0]] }

## |TEST CASE|: Top stone slab
setblock ~ ~ ~ minecraft:stone_slab[type=top]
function #bs.hitbox:get_block
assert data storage bs:out hitbox{ shape: [[0.0, 8.0, 0.0, 16.0, 16.0, 16.0]] }
