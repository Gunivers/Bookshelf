#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:imitate_ori_v
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity bs.id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rv dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative orientation V","color":"aqua"}]
scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Linked to","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.targetId = @s bs.link.to
function bs.id:check

#   Relative Orientation
execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.orientation:get_v/accuracy/10-3
scoreboard players operation @s bs.ori.v += @s bs.link.rv

function bs.orientation:set_v/accuracy/10-3
