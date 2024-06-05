tp @s ~ ~ ~
execute store result score #biome.variation bs.data run data get entity @s Pos[1]
scoreboard players remove #biome.variation bs.data 80
execute in minecraft:overworld run tp @s -30000000 0 1600
