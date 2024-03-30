# slime_like group
execute store result score #result bs.data run data get entity @s Size
scoreboard players add #result bs.data 1
scoreboard players operation #result bs.data *= 255 bs.const
scoreboard players set $hitbox.width bs.out 2040
scoreboard players set $hitbox.height bs.out 2040
scoreboard players operation $hitbox.width bs.out *= #result bs.data
scoreboard players operation $hitbox.height bs.out *= #result bs.data
scoreboard players operation $hitbox.width bs.out /= 1000 bs.const
scoreboard players operation $hitbox.height bs.out /= 1000 bs.const
