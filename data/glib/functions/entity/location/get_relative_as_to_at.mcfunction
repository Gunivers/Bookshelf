#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/location/get_relative_as_to_at
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# INIT

scoreboard objectives add Glib_R_LocX dummy
scoreboard objectives add Glib_R_LocY dummy
scoreboard objectives add Glib_R_LocZ dummy

scoreboard objectives add LocX dummy
scoreboard objectives add LocY dummy
scoreboard objectives add LocZ dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_Get_Loc_Relative"]}

execute store result score @s LocX run data get entity @s Pos[0] 1
execute store result score @s LocY run data get entity @s Pos[1] 1
execute store result score @s LocZ run data get entity @s Pos[2] 1

execute store result score @s Glib_R_LocX run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[0] 1
execute store result score @s Glib_R_LocY run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[1] 1
execute store result score @s Glib_R_LocZ run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[2] 1

scoreboard players operation @s Glib_R_LocX -= @s LocX
scoreboard players operation @s Glib_R_LocY -= @s LocY
scoreboard players operation @s Glib_R_LocZ -= @s LocZ
