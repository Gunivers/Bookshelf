# area_effect_cloud group
execute store result score $hitbox.width bs.out run data get entity @s Radius 2000000
scoreboard players set $hitbox.height bs.out 500000
