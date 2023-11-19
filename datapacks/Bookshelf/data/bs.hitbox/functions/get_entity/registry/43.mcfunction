# pufferfish group
execute store result score #hitbox.get_entity.state bs.data run data get entity @s PuffState
execute if score #hitbox.get_entity.state bs.data matches 0 run scoreboard players set $hitbox.height bs.out 350000
execute if score #hitbox.get_entity.state bs.data matches 1 run scoreboard players set $hitbox.height bs.out 490000
execute if score #hitbox.get_entity.state bs.data matches 2 run scoreboard players set $hitbox.height bs.out 700000
scoreboard players operation $hitbox.width bs.out = $hitbox.height bs.out
