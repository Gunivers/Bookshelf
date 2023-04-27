# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Majoras16
# Contributors  : 

# Version: 1.0
# Created: 27/04/2023 (1.19.2)
# Last verification: 27/04/2023 (1.19.2)
# Last modification: 27/04/2023 (1.19.2)

# Original path : bs.vector:scalar_product
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/vector#scalar_product
# Note          :

# INIT ------------------------------------------------------------------------

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

execute if score @s bs.opt.0 matches 1 run function bs.vector:normalize
execute if score @s bs.opt.0 matches 1 run function bs.vector:swap_inputs
execute if score @s bs.opt.0 matches 1 run function bs.vector:normalize

scoreboard players operation #vector.scalar.x bs.data = @s bs.vector.x
scoreboard players operation #vector.scalar.x bs.data *= @s bs.in.0
scoreboard players operation #vector.scalar.y bs.data = @s bs.vector.y
scoreboard players operation #vector.scalar.y bs.data *= @s bs.in.1
scoreboard players operation #vector.scalar.z bs.data = @s bs.vector.z
scoreboard players operation #vector.scalar.z bs.data *= @s bs.in.2

scoreboard players operation @s bs.out.0 = #vector.scalar.x bs.data
scoreboard players operation @s bs.out.0 += #vector.scalar.y bs.data
scoreboard players operation @s bs.out.0 += #vector.scalar.z bs.data


# RESET PARAMETERS ------------------------------------------------------------
scoreboard players reset @s bs.opt.0