execute store success score #hitbox.is_custom bs.data if predicate bs.hitbox:has_hitbox
execute if score #hitbox.is_custom bs.data matches 0 run function #bs.hitbox:get_entity
execute store success score #hitbox.is_shaped bs.data unless predicate bs.hitbox:has_hitbox

execute if score #hitbox.is_shaped bs.data matches 0 run function bs.move:collision/check/size
execute if score #hitbox.is_shaped bs.data matches 1 run function bs.move:collision/check/shape
execute if score #hitbox.is_custom bs.data matches 0 run scoreboard players reset @s bs.height
execute if score #hitbox.is_custom bs.data matches 0 run scoreboard players reset @s bs.width

tag @s add bs.move.omit
