#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:link/reverse_loc_y
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.ry dummy [{"text":"GLib ","color":"gold"},{"text":"Relative location Y","color":"dark_gray"}]
scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Start Backup
scoreboard players operation backup.link.reverse.LocY glib = @s glib.locY
# End Backup

data merge entity @s[type=!player] {NoGravity:1}

scoreboard players operation @s glib.targetId = @s glib.link.to
function glib:id/check

# Relative Position
execute at @s run function glib:location/get_y/accuracy/10-3
scoreboard players operation link.reverseLoc.diff glib = @s glib.locY
execute at @e[tag=glib.id.match,limit=1,sort=nearest] run function glib:location/get_y/accuracy/10-3
scoreboard players operation link.reverseLoc.diff glib -= @s glib.locY

# Calcul difference
scoreboard players operation link.reverseLoc.diff glib -= @s glib.link.ry

# Update link
scoreboard players operation link.reverseLoc.diff glib *= 2 glib.const
scoreboard players operation @s glib.link.ry += link.reverseLoc.diff glib

# Set new position
scoreboard players operation @s glib.locY += @s glib.link.ry
function glib:location/set_y/accuracy/10-3

# Start Restore
scoreboard players operation @s glib.locY = backup.link.reverse.LocY glib
# End Restore
