# phantom group
execute store result score #result bs.data run data get entity @s Size 15
scoreboard players add #result bs.data 100
scoreboard players set @s bs.width 9
scoreboard players set @s bs.height 5
scoreboard players operation @s bs.width *= #result bs.data
scoreboard players operation @s bs.height *= #result bs.data
