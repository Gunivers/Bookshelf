#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:reverse_ori_h
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rh dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative orientation H","color":"aqua"}]
scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Linked to","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Start Backup
scoreboard players operation backup.link.reverse.oriH bs = @s bs.ori.h
# End Backup

scoreboard players operation @s bs.id.target = @s bs.link.to
function bs.id:check

# Relative Position
execute at @s run function bs.orientation:get_h/accuracy/10-3
scoreboard players operation link.reverseLoc.diff bs = @s bs.ori.h
execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.orientation:get_h/accuracy/10-3
scoreboard players operation link.reverseLoc.diff bs -= @s bs.ori.h

# Calcul difference
scoreboard players operation link.reverseLoc.diff bs -= @s bs.link.rh

# Update link
scoreboard players operation link.reverseLoc.diff bs *= 2 bs.const
scoreboard players operation @s bs.link.rh += link.reverseLoc.diff bs

# Set new position
scoreboard players operation @s bs.ori.h += @s bs.link.rh
function bs.orientation:set_h/accuracy/10-3

# Start Restore
scoreboard players operation @s bs.ori.h = backup.link.reverse.oriH bs
# End Restore
