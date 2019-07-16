# NAME: Get Location
# PATH: gunivers-lib:entity/location/get

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# OUTPUT:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# INIT
scoreboard objectives add Glib_R_LocX dummy
scoreboard objectives add Glib_R_LocY dummy
scoreboard objectives add Glib_R_LocZ dummy

scoreboard objectives add LocX dummy
scoreboard objectives add LocY dummy
scoreboard objectives add LocZ dummy

# CODE:
#____________________________________________________________________________________________________


summon area_effect_cloud ~ ~ ~ {Tags:["Glib_Get_Loc_Relative"]}

execute store result score @s LocX run data get entity @s Pos[0] 1000
execute store result score @s LocY run data get entity @s Pos[1] 1000
execute store result score @s LocZ run data get entity @s Pos[2] 1000

execute store result score @s Glib_R_LocX run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[0] 1000
execute store result score @s Glib_R_LocY run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[1] 1000
execute store result score @s Glib_R_LocZ run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[2] 1000

scoreboard players operation @s Glib_R_LocX -= @s LocX
scoreboard players operation @s Glib_R_LocY -= @s LocY
scoreboard players operation @s Glib_R_LocZ -= @s LocZ
