# NAME: Update link Phi
# PATH: gunivers-lib:entity/link/update_link_p

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# NOTE:
# @s must be linked to an entity

# INIT:
scoreboard objectives add Var2 dummy

scoreboard objectives add Glib_R_OriH dummy

scoreboard objectives add Glib_Link_Parent dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s TargetId = @s Glib_Link_Parent

function gunivers-lib:entity/id/check

execute store result score @s Var2 run data get entity @s Rotation[1] 1000

execute store result score @s Glib_R_OriH run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[1] 1000

scoreboard players operation @s Glib_R_OriH -= @s Var2