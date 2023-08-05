# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: (1.0)
# Created: 03/08/2023 (1.20.1)
# Last verification: 03/08/2023 (1.20.1)
# Last modification: 03/08/2023 (1.20.1)

# Execution     : Do not execute this function. It is automatically executed via the minecraft "load" tag.
# Original path : bs.smartmove:__load__
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/smartmove.html
# Note          : 

# CODE ------------------------------------------------------------------------

# Score declaration
scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

# Update metadata
scoreboard players set module.move bs.metadata 1