# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.0
# Created: 19/02/2023 (1.19.2)
# Last verification: 19/02/2023 (1.19.2)
# Last modification: 19/02/2023 (1.19.2)

# Original path : bs.vecotr:fast_normalize
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/vector#normalize
# Note          :

# INIT ------------------------------------------------------------------------

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

# CONFIG ----------------------------------------------------------------------

# The final vector will have (almost) this length
execute unless entity @s[tag=bs.config.override] run scoreboard players set vector.normalize.length bs.config 1000
tag @s[tag=bs.config.override] remove bs.config.override

# CODE ------------------------------------------------------------------------

scoreboard players operation #vector.backup.res0 bs.data = @s bs.out.0

function bs.vector:length

scoreboard players operation @s bs.vector.x *= vector.normalize.length bs.config
scoreboard players operation @s bs.vector.y *= vector.normalize.length bs.config
scoreboard players operation @s bs.vector.z *= vector.normalize.length bs.config

scoreboard players operation @s bs.vector.x /= @s bs.out.0
scoreboard players operation @s bs.vector.y /= @s bs.out.0
scoreboard players operation @s bs.vector.z /= @s bs.out.0

scoreboard players operation @s bs.out.0 = #vector.backup.res0 bs.data