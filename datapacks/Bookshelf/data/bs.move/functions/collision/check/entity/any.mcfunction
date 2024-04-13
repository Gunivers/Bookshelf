tag @s add bs.raycast.omit
function #bs.hitbox:get_entity
execute if entity @s[type=#bs.hitbox:is_composite] run return run function bs.move:collision/check/entity/shape
function bs.move:collision/check/entity/size
