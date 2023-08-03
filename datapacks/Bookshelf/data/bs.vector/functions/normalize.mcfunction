# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.0
# Created: 19/02/2023 (1.19.2)
# Last verification: 21/05/2023 (1.19.4)
# Last modification: 21/05/2023 (1.19.4)

# Original path : bs.vecotr:fast_normalize
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/vector#normalize
# Note          :

# CODE ------------------------------------------------------------------------

# Lenght after normalization
execute unless score @s bs.opt.0 matches 0.. run scoreboard players set @s bs.opt.0 1000

scoreboard players operation #vector.backup.out.0 bs.data = @s bs.out.0

function bs.vector:length

scoreboard players operation @s bs.vector.x *= @s bs.opt.0
scoreboard players operation @s bs.vector.y *= @s bs.opt.0
scoreboard players operation @s bs.vector.z *= @s bs.opt.0

scoreboard players operation @s bs.vector.x /= @s bs.out.0
scoreboard players operation @s bs.vector.y /= @s bs.out.0
scoreboard players operation @s bs.vector.z /= @s bs.out.0

scoreboard players operation @s bs.out.0 = #vector.backup.out.0 bs.data

scoreboard players reset @s bs.opt.0