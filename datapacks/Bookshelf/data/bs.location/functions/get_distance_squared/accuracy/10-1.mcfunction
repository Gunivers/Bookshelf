#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:accuracy/10-1
# Documentation: https://bs-core.readthedocs.io//entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT










#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s bs.in.0 run data get entity @s Pos[0] 10
execute store result score @s bs.in.1 run data get entity @s Pos[1] 10
execute store result score @s bs.in.2 run data get entity @s Pos[2] 10

summon area_effect_cloud ~ ~ ~ {Tags:["bs","bs_Get_Distance"]}

execute store result score @s bs.in.3 as @e[tag=bs_Get_Distance] run data get entity @s Pos[0] 10
execute store result score @s bs.in.4 as @e[tag=bs_Get_Distance] run data get entity @s Pos[1] 10
execute store result score @s bs.in.4 as @e[tag=bs_Get_Distance] run data get entity @s Pos[2] 10

kill @e[tag=bs_Get_Distance]

scoreboard players operation @s bs.in.3 -= @s bs.in.0
scoreboard players operation @s bs.in.4 -= @s bs.in.1
scoreboard players operation @s bs.in.4 -= @s bs.in.2

scoreboard players operation @s bs.in.3 *= @s bs.in.3
scoreboard players operation @s bs.in.4 *= @s bs.in.4
scoreboard players operation @s bs.in.4 *= @s bs.in.4

scoreboard players operation @s bs.out.0 = @s bs.in.3
scoreboard players operation @s bs.out.0 += @s bs.in.4
scoreboard players operation @s bs.out.0 += @s bs.in.4
