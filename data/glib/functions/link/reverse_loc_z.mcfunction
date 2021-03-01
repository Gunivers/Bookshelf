#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:link/reverse_loc_z
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.rz dummy [{"text":"GLib ","color":"gold"},{"text":"Relative location Z","color":"dark_gray"}]
scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Start Backup
scoreboard players operation backup.link.reverse.LocZ glib = @s glib.locZ
# End Backup

scoreboard players operation @s glib.targetId = @s glib.link.to
function glib:id/check

# Relative Position
execute at @s run function glib:location/get_z/accuracy/10-3
scoreboard players operation link.reverseLoc.diff glib = @s glib.locZ
execute at @e[tag=glib.id.match,limit=1,sort=nearest] run function glib:location/get_z/accuracy/10-3
scoreboard players operation link.reverseLoc.diff glib -= @s glib.locZ

# Calcul difference
scoreboard players operation link.reverseLoc.diff glib -= @s glib.link.rz

# Update link
scoreboard players operation link.reverseLoc.diff glib *= 2 glib.const
scoreboard players operation @s glib.link.rz += link.reverseLoc.diff glib

# Set new position
scoreboard players operation @s glib.locZ += @s glib.link.rz
function glib:location/set_z/accuracy/10-3

# Start Restore
scoreboard players operation @s glib.locZ = backup.link.reverse.LocZ glib
# End Restore
