# pufferfish group
execute store result score #result bs.data run data get entity @s PuffState
execute if score #result bs.data matches 0 run scoreboard players set $hitbox.height bs.out 350
execute if score #result bs.data matches 1 run scoreboard players set $hitbox.height bs.out 490
execute if score #result bs.data matches 2 run scoreboard players set $hitbox.height bs.out 700
scoreboard players operation $hitbox.width bs.out = $hitbox.height bs.out
