# get_entity returns a scale
# @batch bs.hitbox
# @dummy

function #bs.hitbox:get_entity
assert data storage bs:out hitbox{ scale: 1.0 }

attribute @s minecraft:generic.scale base set 0.42
function #bs.hitbox:get_entity
assert data storage bs:out hitbox{ scale: 0.42 }
