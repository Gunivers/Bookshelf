# NAME: Update link Theta
# PATH: gunivers-lib:entity/link/update_link_t

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# NOTE:
# @s must be linked to an entity

# INIT:
scoreboard objectives add Var1 dummy

scoreboard objectives add Glib_R_OriV dummy

scoreboard objectives add Glib_Link_Parent dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s TargetId = @s Glib_Link_Parent

function gunivers-lib:entity/id/check

execute store result score @s Var1 run data get entity @s Rotation[0] 1000

execute store result score @s Glib_R_OriV run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[0] 1000

scoreboard players operation @s Glib_R_OriV -= @s Var1