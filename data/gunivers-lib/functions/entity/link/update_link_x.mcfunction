# NAME: Update link X
# PATH: gunivers-lib:entity/link/update_link_x

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Vars (module)
# - Id (module)
# - Location (module)
# - Relative Location (module)
# Must be linked to an entity

# INPUT:
# - Glib_Link_Parent

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s TargetId = @s Glib_Link_Parent

function gunivers-lib:entity/id/check


#   Relative Position
execute store result score @s Var1 run data get entity @s Pos[0] 1000

execute store result score @s Glib_R_LocX run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[0] 1000

scoreboard players operation @s Glib_R_LocX -= @s Var1