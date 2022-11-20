#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:reverse_loc_y
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.ry dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative location Y","color":"aqua"}]
scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Linked to","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Start Backup
scoreboard players operation backup.link.reverse.LocY bs = @s bs.locY
# End Backup

data merge entity @s[type=!player] {NoGravity:1}

scoreboard players operation @s bs.targetId = @s bs.link.to
function bs.id:check

# Relative Position
execute at @s run function bs.location:get_y/accuracy/10-3
scoreboard players operation link.reverseLoc.diff bs = @s bs.locY
execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.location:get_y/accuracy/10-3
scoreboard players operation link.reverseLoc.diff bs -= @s bs.locY

# Calcul difference
scoreboard players operation link.reverseLoc.diff bs -= @s bs.link.ry

# Update link
scoreboard players operation link.reverseLoc.diff bs *= 2 bs.const
scoreboard players operation @s bs.link.ry += link.reverseLoc.diff bs

# Set new position
scoreboard players operation @s bs.locY += @s bs.link.ry
function bs.location:set_y/accuracy/10-3

# Start Restore
scoreboard players operation @s bs.locY = backup.link.reverse.LocY bs
# End Restore
