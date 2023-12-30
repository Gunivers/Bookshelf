# slime_like group
execute store result score #result bs.data run data get entity @s Size
scoreboard players add #result bs.data 1
scoreboard players operation #result bs.data *= 255 bs.const
scoreboard players set @s bs.width 2040
scoreboard players set @s bs.height 2040
scoreboard players operation @s bs.width *= #result bs.data
scoreboard players operation @s bs.height *= #result bs.data
scoreboard players operation @s bs.width /= 1000 bs.const
scoreboard players operation @s bs.height /= 1000 bs.const
