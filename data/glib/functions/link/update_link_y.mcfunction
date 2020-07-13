#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:link/update_link_y
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Parallelizable: <true/false/global>
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.link.ry dummy
scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.targetId = @s glib.link.to

function glib:id/check

#   Relative Position
execute store result score @s glib.var0 run data get entity @s Pos[1] 1000

execute store result score @s glib.link.ry run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[1] 1000

scoreboard players operation @s glib.link.ry -= @s glib.var0

scoreboard players operation @s glib.link.ry *= -1 glib.const
