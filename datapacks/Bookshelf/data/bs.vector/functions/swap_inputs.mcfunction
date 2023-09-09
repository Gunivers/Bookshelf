# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Majoras16
# Contributors  : 

# Version: 1.0
# Created: 27/04/2023 (1.19.2)
# Last verification: 27/04/2023 (1.19.2)
# Last modification: 27/04/2023 (1.19.2)

# Original path : bs.vector:swap_inputs
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/vector#swap_inputs
# Note          :

# INIT ------------------------------------------------------------------------

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation #vector.swap.x bs.data = @s bs.in.0
scoreboard players operation #vector.swap.y bs.data = @s bs.in.1
scoreboard players operation #vector.swap.z bs.data = @s bs.in.2

scoreboard players operation @s bs.in.0 = @s bs.vector.x
scoreboard players operation @s bs.in.1 = @s bs.vector.y
scoreboard players operation @s bs.in.2 = @s bs.vector.z

scoreboard players operation @s bs.vector.x = #vector.swap.x bs.data
scoreboard players operation @s bs.vector.y = #vector.swap.y bs.data
scoreboard players operation @s bs.vector.z = #vector.swap.z bs.data