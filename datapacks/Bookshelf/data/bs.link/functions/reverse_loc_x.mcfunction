#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:reverse_loc_x
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rx dummy [{"text":"GLib ","color":"gold"},{"text":"Relative location X","color":"dark_gray"}]
scoreboard objectives add bs.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Start Backup
scoreboard players operation backup.link.reverse.LocX glib = @s bs.locX
# End Backup

scoreboard players operation @s bs.targetId = @s bs.link.to
function bs.id:check

# Relative Position
execute at @s run function bs.location:get_x/accuracy/10-3
scoreboard players operation link.reverseLoc.diff glib = @s bs.locX
execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.location:get_x/accuracy/10-3
scoreboard players operation link.reverseLoc.diff glib -= @s bs.locX

# Calcul difference
scoreboard players operation link.reverseLoc.diff glib -= @s bs.link.rx

# Update link
scoreboard players operation link.reverseLoc.diff glib *= 2 bs.const
scoreboard players operation @s bs.link.rx += link.reverseLoc.diff glib

# Set new position
scoreboard players operation @s bs.locX += @s bs.link.rx
function bs.location:set_x/accuracy/10-3

# Start Restore
scoreboard players operation @s bs.locX = backup.link.reverse.LocX glib
# End Restore
