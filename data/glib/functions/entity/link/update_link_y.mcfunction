#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/link/update_link_y
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Note: @s must have Glib_Link_Parent defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Glib_R_LocY dummy
scoreboard objectives add Glib_Link_Parent dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s TargetId = @s Glib_Link_Parent

function glib:entity/id/check

#   Relative Position
execute store result score @s Var1 run data get entity @s Pos[1] 1000

execute store result score @s Glib_R_LocY run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[1] 1000

scoreboard players operation @s Glib_R_LocY -= @s Var1

scoreboard players operation @s Glib_R_LocY *= -1 Constant
