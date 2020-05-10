#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/link/update_link_v
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Note: @s must have Glib_Link_Parent defined (equal to another entity id)

#__________________________________________________
# INIT

scoreboard objectives add Var2 dummy
scoreboard objectives add Glib_R_OriH dummy
scoreboard objectives add Glib_Link_Parent dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s TargetId = @s Glib_Link_Parent

function glib:entity/id/check

execute store result score @s Var2 run data get entity @s Rotation[1] 1000

execute store result score @s Glib_R_OriH run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[1] 1000

scoreboard players operation @s Glib_R_OriH -= @s Var2

scoreboard players operation @s Glib_R_OriH *= -1 Constant
