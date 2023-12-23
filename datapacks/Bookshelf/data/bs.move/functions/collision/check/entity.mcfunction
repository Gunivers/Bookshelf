tag @s add bs.move.omit
execute store success score #hitbox.is_custom bs.data if predicate bs.hitbox:has_hitbox
execute if score #hitbox.is_custom bs.data matches 0 run function #bs.hitbox:get_entity
execute if predicate bs.hitbox:has_hitbox run return run function bs.move:collision/check/size
function bs.move:collision/check/shape
