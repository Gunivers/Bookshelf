execute store success score #hitbox.is_custom bs.data if predicate bs.hitbox:has_hitbox
execute if score #hitbox.is_custom bs.data matches 0 run function #bs.hitbox:get_entity
execute store success score #hitbox.is_shaped bs.data unless predicate bs.hitbox:has_hitbox

execute if score #raycast.ux bs.data matches ..-1 run scoreboard players operation #raycast.lx bs.data -= #raycast.dx bs.data
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players operation #raycast.ly bs.data -= #raycast.dy bs.data
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players operation #raycast.lz bs.data -= #raycast.dz bs.data
execute if score #hitbox.is_shaped bs.data matches 0 run function bs.raycast:check/size
execute if score #hitbox.is_shaped bs.data matches 1 run function bs.raycast:check/shape
execute if score #hitbox.is_custom bs.data matches 0 run scoreboard players reset @s bs.height
execute if score #hitbox.is_custom bs.data matches 0 run scoreboard players reset @s bs.width
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players operation #raycast.lx bs.data += #raycast.dx bs.data
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players operation #raycast.lz bs.data += #raycast.dz bs.data

tag @s add bs.move.omit
