# NAME: Update link Theta
# PATH: gunivers-lib:entity/link/update_link_t

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# Must be linked to an entity

# INPUT:
# - Glib_Link_Parent

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:
#____________________________________________________________________________________________________

execute store result score @s Var1 run data get entity @s Rotation[0] 1000

execute store result score @s Glib_R_OriT run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[0] 1000

scoreboard players operation @s Glib_R_OriT -= @s Var1