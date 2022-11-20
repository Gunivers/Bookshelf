#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:update_link_y
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.ry dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Link Relative Y","color":"dark_gray"}]
scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Link To","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.targetId = @s bs.link.to
function bs.id:check

# Relative Position
execute at @s run function bs.location:get_y/accuracy/10-3
scoreboard players operation @s bs.link.ry = @s bs.locY

execute at @e[tag=bs.id.match] run function bs.location:get_y/accuracy/10-3
scoreboard players operation @s bs.link.ry -= @s bs.locY
