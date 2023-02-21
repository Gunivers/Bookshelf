#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:get_distance_squared_as_to_at/accuracy/10-3
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

execute store result score @s bs.in.0 run data get entity @s Pos[0] 1000
execute store result score @s bs.in.1 run data get entity @s Pos[1] 1000
execute store result score @s bs.in.2 run data get entity @s Pos[2] 1000

summon area_effect_cloud ~ ~ ~ {Tags:["bs","bs_Get_Distance"]}

execute store result score @s bs.in.3 as @e[tag=bs_Get_Distance] run data get entity @s Pos[0] 1000
execute store result score @s bs.in.4 as @e[tag=bs_Get_Distance] run data get entity @s Pos[1] 1000
execute store result score @s bs.in.4 as @e[tag=bs_Get_Distance] run data get entity @s Pos[2] 1000

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
