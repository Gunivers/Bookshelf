# slime_like group
execute store result score #result bs.data run data get entity @s Size
scoreboard players add #result bs.data 1
scoreboard players operation #result bs.data *= 255 bs.const
scoreboard players set #hitbox.width bs.data 2040
scoreboard players set #hitbox.height bs.data 2040
execute store result storage bs:out hitbox.width double .000001 run scoreboard players operation #hitbox.width bs.data *= #result bs.data
execute store result storage bs:out hitbox.height double .000001 run scoreboard players operation #hitbox.height bs.data *= #result bs.data
