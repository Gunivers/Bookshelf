#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:reverse_loc_z
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative location Z","color":"aqua"}]
scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Linked to","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Start Backup
scoreboard players operation backup.link.reverse.LocZ bs = @s bs.loc.z
# End Backup

scoreboard players operation @s bs.id.target = @s bs.link.to
function bs.id:check

# Relative Position
execute at @s run function bs.location:get_z/accuracy/10-3
scoreboard players operation link.reverseLoc.diff bs = @s bs.loc.z
execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.location:get_z/accuracy/10-3
scoreboard players operation link.reverseLoc.diff bs -= @s bs.loc.z

# Calcul difference
scoreboard players operation link.reverseLoc.diff bs -= @s bs.link.rz

# Update link
scoreboard players operation link.reverseLoc.diff bs *= 2 bs.const
scoreboard players operation @s bs.link.rz += link.reverseLoc.diff bs

# Set new position
scoreboard players operation @s bs.loc.z += @s bs.link.rz
function bs.location:set_z/accuracy/10-3

# Start Restore
scoreboard players operation @s bs.loc.z = backup.link.reverse.LocZ bs
# End Restore
