#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/link/update_link_y
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.link.r.y dummy
scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.id.target = @s glib.link.to

function glib:entity/id/check

#   Relative Position
execute store result score @s glib.var run data get entity @s Pos[1] 1000

execute store result score @s glib.link.r.y run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[1] 1000

scoreboard players operation @s glib.link.r.y -= @s glib.var

scoreboard players operation @s glib.link.r.y *= -1 glib.const
