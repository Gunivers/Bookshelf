# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers.

# Authors: Leirof
# Contributors:

# Version: 1.0.0
# Created: N/D (1.15)
# Last verification: 18/01/2023 (1.19.2)
# Last modification: 18/01/2023 (1.19.2)

# Original path: bs.link:create_link_ata
# Documentation: /docs/links.md#create-link-as-to-at
# Note: @s must have bs.link.to defined (equal to another entity id)

# PARAMETERS ------------------------------------------------------------------

# INIT ------------------------------------------------------------------------

scoreboard objectives add bs.link.rx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative position X","color":"aqua"}]
scoreboard objectives add bs.link.ry dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative position Y","color":"aqua"}]
scoreboard objectives add bs.link.rz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative position Z","color":"aqua"}]

scoreboard objectives add bs.link.lx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Local position X","color":"aqua"}]
scoreboard objectives add bs.link.ly dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Local position Y","color":"aqua"}]
scoreboard objectives add bs.link.lz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Local position Z","color":"aqua"}]

scoreboard objectives add bs.link.rv dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative orientation V","color":"aqua"}]
scoreboard objectives add bs.link.rh dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative orientation H","color":"aqua"}]

scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Linked to","color":"aqua"}]

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

# Give an ID to the target if it doesn't have one
execute as @e[limit=1,sort=nearest] unless score @s bs.id matches 1.. run function bs.id:get_suid

scoreboard players operation @s bs.link.to = @e[limit=1,sort=nearest] bs.id

function bs.link:update_link
