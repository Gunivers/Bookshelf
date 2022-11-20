#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.15
# Last check: 1.16.1

# Original path: bs.link:create_link_ata
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative position X","color":"aqua"}]
scoreboard objectives add bs.link.ry dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative position Y","color":"aqua"}]
scoreboard objectives add bs.link.rz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative position Z","color":"aqua"}]

scoreboard objectives add bs.link.lx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Local position X","color":"aqua"}]
scoreboard objectives add bs.link.ly dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Local position Y","color":"aqua"}]
scoreboard objectives add bs.link.lz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Local position Z","color":"aqua"}]

scoreboard objectives add bs.link.rv dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative orientation V","color":"aqua"}]
scoreboard objectives add bs.link.rh dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative orientation H","color":"aqua"}]

scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Linked to","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.link.to = @e[limit=1,sort=nearest] bs.id
function bs.link:update_link
