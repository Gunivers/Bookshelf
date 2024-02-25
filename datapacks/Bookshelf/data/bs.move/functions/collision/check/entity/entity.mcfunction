execute store success score #hitbox.is_custom bs.data if predicate bs.hitbox:has_hitbox
execute if score #hitbox.is_custom bs.data matches 0 run function #bs.hitbox:get_entity
execute store success score #hitbox.is_shaped bs.data unless predicate bs.hitbox:has_hitbox

execute store result score #move.rx bs.data run data get entity @s Pos[0] 1000
execute store result score #move.ry bs.data run data get entity @s Pos[1] 1000
execute store result score #move.rz bs.data run data get entity @s Pos[2] 1000
scoreboard players operation #move.rx bs.data -= #move.x bs.data
scoreboard players operation #move.ry bs.data -= #move.y bs.data
scoreboard players operation #move.rz bs.data -= #move.z bs.data
scoreboard players operation #move.rx bs.data *= 1000 bs.const
scoreboard players operation #move.ry bs.data *= 1000 bs.const
scoreboard players operation #move.rz bs.data *= 1000 bs.const

execute if score #hitbox.is_shaped bs.data matches 0 run function bs.move:collision/check/entity/size
execute if score #hitbox.is_shaped bs.data matches 1 run function bs.move:collision/check/shape
execute if score #hitbox.is_custom bs.data matches 0 run scoreboard players reset @s bs.height
execute if score #hitbox.is_custom bs.data matches 0 run scoreboard players reset @s bs.width
