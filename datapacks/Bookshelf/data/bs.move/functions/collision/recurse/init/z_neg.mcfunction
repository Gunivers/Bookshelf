execute store result entity B5-0-0-0-1 Pos[2] double .001 run scoreboard players operation #move.z1 bs.data += #move.sw bs.data
execute as B5-0-0-0-1 at @s run tp @s ~ ~ ~-.000000001
execute store result score #move.z1 bs.data run data get entity B5-0-0-0-1 Pos[2]
scoreboard players operation #move.z1 bs.data *= 1000 bs.const
scoreboard players operation #move.z1 bs.data -= #move.z bs.data
scoreboard players operation #move.z2 bs.data -= #move.sw bs.data
scoreboard players remove #move.z2 bs.data 1000
