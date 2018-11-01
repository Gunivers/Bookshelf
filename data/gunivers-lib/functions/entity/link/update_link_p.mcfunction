# NAME: Update link Phi
# PATH: gunivers-lib:entity/link/update_link_p

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Vars (module)
# - Id (module)
# - Orientation (module)
# - Relative Orientation (module)
# Must be linked to an entity

# INPUT:
# - Glib_Link_Parent

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:
#____________________________________________________________________________________________________

execute store result score @s Var2 run data get entity @s Rotation[1] 1000

execute store result score @s Glib_R_OriP run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[1] 1000

scoreboard players operation @s Glib_R_OriP -= @s Var2