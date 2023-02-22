#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:update_link_x
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Relative X","color":"aqua"}]
scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link To","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.id.target = @s bs.link.to
function bs.id:check

# Relative Position
execute at @s run function bs.location:get_x/accuracy/10-3
scoreboard players operation @s bs.link.rx = @s bs.loc.x

execute at @e[tag=bs.id.match] run function bs.location:get_x/accuracy/10-3
scoreboard players operation @s bs.link.rx -= @s bs.loc.x
