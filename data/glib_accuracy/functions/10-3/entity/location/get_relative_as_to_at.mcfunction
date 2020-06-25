#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib_accuracy:10-3/entity/location/get_relative_as_to_at
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.r.x dummy
scoreboard objectives add glib.link.r.y dummy
scoreboard objectives add glib.link.r.z dummy

scoreboard objectives add LocX dummy
scoreboard objectives add LocY dummy
scoreboard objectives add LocZ dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_Get_Loc_Relative"]}

execute store result score @s LocX run data get entity @s Pos[0] 1000
execute store result score @s LocY run data get entity @s Pos[1] 1000
execute store result score @s LocZ run data get entity @s Pos[2] 1000

execute store result score @s glib.link.r.x run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[0] 1000
execute store result score @s glib.link.r.y run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[1] 1000
execute store result score @s glib.link.r.z run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[2] 1000

scoreboard players operation @s glib.link.r.x -= @s LocX
scoreboard players operation @s glib.link.r.y -= @s LocY
scoreboard players operation @s glib.link.r.z -= @s LocZ
