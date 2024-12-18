# @batch bs.hitbox

## |TEST CASE|: Block with no offset
setblock ~ ~ ~ minecraft:poppy
function #bs.hitbox:get_block
assert not data storage bs:out hitbox{ offset: { x: 0.0, z: 0.0 } }

## |TEST CASE|: Block with offset
setblock 0 0 0 minecraft:poppy
execute positioned 0 0 0 run function #bs.hitbox:get_block
assert data storage bs:out hitbox{ shape: [[5.0, 0.0, 5.0, 11.0, 10.0, 11.0]], offset: { x: -0.25, z: -0.25 } }
