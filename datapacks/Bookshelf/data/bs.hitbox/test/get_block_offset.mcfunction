# get_block returns an offset only for offseted blocks
# @batch bs.hitbox

setblock ~ ~ ~ minecraft:bookshelf
function #bs.hitbox:get_block
assert data storage bs:out hitbox{ offset: { x: 0.0, z: 0.0 } }

setblock ~ ~ ~ minecraft:poppy
function #bs.hitbox:get_block
assert not data storage bs:out hitbox{ offset: { x: 0.0, z: 0.0 } }

setblock 0 0 0 minecraft:poppy
execute positioned 0 0 0 run function #bs.hitbox:get_block
assert data storage bs:out hitbox{ shape: [[5, 0, 5, 11, 10, 11]], offset: { x: -0.25, z: -0.25 } }
