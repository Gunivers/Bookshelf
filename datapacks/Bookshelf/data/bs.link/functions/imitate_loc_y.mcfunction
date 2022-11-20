#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:imitate_loc_y
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity bs.id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.ry dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Relative position Y","color":"dark_gray"}]
scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

data merge entity @s[type=!player] {NoGravity:1}

scoreboard players operation @s bs.targetId = @s bs.link.to
function bs.id:check

#   Relative Position
execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.location:get_y/accuracy/10-3
scoreboard players operation @s bs.locY += @s bs.link.ry

function bs.location:set_y/accuracy/10-3
