#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:link/reverse_ori_h
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.rh dummy [{"text":"GLib ","color":"gold"},{"text":"Relative orientation H","color":"dark_gray"}]
scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Start Backup
scoreboard players operation backup.link.reverse.oriH glib = @s glib.oriH
# End Backup

scoreboard players operation @s glib.targetId = @s glib.link.to
function glib:id/check

# Relative Position
execute at @s run function glib:orientation/get_h/accuracy/10-3
scoreboard players operation link.reverseLoc.diff glib = @s glib.oriH
execute at @e[tag=glib.id.match,limit=1,sort=nearest] run function glib:orientation/get_h/accuracy/10-3
scoreboard players operation link.reverseLoc.diff glib -= @s glib.oriH

# Calcul difference
scoreboard players operation link.reverseLoc.diff glib -= @s glib.link.rh

# Update link
scoreboard players operation link.reverseLoc.diff glib *= 2 glib.const
scoreboard players operation @s glib.link.rh += link.reverseLoc.diff glib

# Set new position
scoreboard players operation @s glib.oriH += @s glib.link.rh
function glib:orientation/set_h/accuracy/10-3

# Start Restore
scoreboard players operation @s glib.oriH = backup.link.reverse.oriH glib
# End Restore
