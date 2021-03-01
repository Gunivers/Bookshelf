#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:link/imitate_loc_z
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity glib.id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.rz dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position Z","color":"dark_gray"}]
scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.targetId = @s glib.link.to
function glib:id/check

#   Relative Position
execute at @e[tag=glib.id.match,limit=1,sort=nearest] run function glib:location/get_z/accuracy/10-3
scoreboard players operation @s glib.locZ += @s glib.link.rz

function glib:location/set_z/accuracy/10-3
