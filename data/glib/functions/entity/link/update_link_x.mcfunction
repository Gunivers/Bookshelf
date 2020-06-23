#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/link/update_link_x
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.link.r.x dummy
scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.id.target = @s glib.link.to

function glib:entity/id/check

#   Relative Position
execute store result score @s glib.var run data get entity @s Pos[0] 1000

execute store result score @s glib.link.r.x run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[0] 1000

scoreboard players operation @s glib.link.r.x -= @s glib.var

scoreboard players operation @s glib.link.r.x *= -1 glib.const
