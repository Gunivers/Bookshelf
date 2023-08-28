# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Majoras16
# Contributors  : 

# Version: 1.0
# Created: 27/04/2023 (1.19.2)
# Last verification: 27/04/2023 (1.19.2)
# Last modification: 27/04/2023 (1.19.2)

# Original path : bs.vector:from_loc
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/vector#from_loc
# Note          :

# INIT ------------------------------------------------------------------------

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation @s bs.vector.x = @s bs.loc.x
scoreboard players operation @s bs.vector.y = @s bs.loc.y
scoreboard players operation @s bs.vector.z = @s bs.loc.z