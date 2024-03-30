# phantom group
execute store result score #result bs.data run data get entity @s Size 15
scoreboard players add #result bs.data 100
scoreboard players set $hitbox.width bs.out 9
scoreboard players set $hitbox.height bs.out 5
scoreboard players operation $hitbox.width bs.out *= #result bs.data
scoreboard players operation $hitbox.height bs.out *= #result bs.data
