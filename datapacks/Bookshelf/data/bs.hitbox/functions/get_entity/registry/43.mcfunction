# pufferfish group
execute store result score #result bs.data run data get entity @s PuffState
execute if score #result bs.data matches 0 run scoreboard players set @s bs.height 350
execute if score #result bs.data matches 1 run scoreboard players set @s bs.height 490
execute if score #result bs.data matches 2 run scoreboard players set @s bs.height 700
scoreboard players operation @s bs.width = @s bs.height
