# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Majoras16
# Contributors  : 

# Version: 1.0
# Created: 27/04/2023 (1.19.2)
# Last verification: 27/04/2023 (1.19.2)
# Last modification: 27/04/2023 (1.19.2)

# Original path : bs.vector:cross_product
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/vector#cross_product
# Note          :

# CODE ------------------------------------------------------------------------

# Backup vector scores
scoreboard players operation #vector.x.backup bs.data = @s bs.vector.x
scoreboard players operation #vector.y.backup bs.data = @s bs.vector.y
scoreboard players operation #vector.z.backup bs.data = @s bs.vector.z

execute if score @s bs.opt.0 matches 1 run function bs.vector:normalize
execute if score @s bs.opt.0 matches 1 run function bs.vector:swap_inputs
execute if score @s bs.opt.0 matches 1 run function bs.vector:normalize

scoreboard players operation #vector.cross.x1 bs.data = @s bs.vector.y
scoreboard players operation #vector.cross.x1 bs.data *= @s bs.in.2
scoreboard players operation #vector.cross.x2 bs.data = @s bs.vector.z
scoreboard players operation #vector.cross.x2 bs.data *= @s bs.in.1
scoreboard players operation #vector.cross.x bs.data = #vector.cross.x1 bs.data
scoreboard players operation #vector.cross.x bs.data -= #vector.cross.x2 bs.data
scoreboard players operation #vector.cross.x bs.data /= 1000 bs.const

scoreboard players operation #vector.cross.y1 bs.data = @s bs.vector.z
scoreboard players operation #vector.cross.y1 bs.data *= @s bs.in.0
scoreboard players operation #vector.cross.y2 bs.data = @s bs.vector.x
scoreboard players operation #vector.cross.y2 bs.data *= @s bs.in.2
scoreboard players operation #vector.cross.y bs.data = #vector.cross.y1 bs.data
scoreboard players operation #vector.cross.y bs.data -= #vector.cross.y2 bs.data
scoreboard players operation #vector.cross.y bs.data /= 1000 bs.const

scoreboard players operation #vector.cross.z1 bs.data = @s bs.vector.x
scoreboard players operation #vector.cross.z1 bs.data *= @s bs.in.1
scoreboard players operation #vector.cross.z2 bs.data = @s bs.vector.y
scoreboard players operation #vector.cross.z2 bs.data *= @s bs.in.0
scoreboard players operation #vector.cross.z bs.data = #vector.cross.z1 bs.data
scoreboard players operation #vector.cross.z bs.data -= #vector.cross.z2 bs.data
scoreboard players operation #vector.cross.z bs.data /= 1000 bs.const

execute if score @s bs.opt.1 matches 1 run scoreboard players operation @s bs.vector.x = #vector.cross.x bs.data
execute if score @s bs.opt.1 matches 1 run scoreboard players operation @s bs.vector.y = #vector.cross.y bs.data
execute if score @s bs.opt.1 matches 1 run scoreboard players operation @s bs.vector.z = #vector.cross.z bs.data
execute if score @s bs.opt.1 matches 1 run function bs.vector:length
execute if score @s bs.opt.1 matches 1 run scoreboard players operation @s bs.out.3 = @s bs.out.0
scoreboard players operation @s bs.out.0 = #vector.cross.x bs.data
scoreboard players operation @s bs.out.1 = #vector.cross.y bs.data
scoreboard players operation @s bs.out.2 = #vector.cross.z bs.data

# Restoring vector scores
scoreboard players operation @s bs.vector.x = #vector.x.backup bs.data
scoreboard players operation @s bs.vector.y = #vector.y.backup bs.data
scoreboard players operation @s bs.vector.z = #vector.z.backup bs.data

# RESET PARAMETERS ------------------------------------------------------------
scoreboard players reset @s bs.opt.0
scoreboard players reset @s bs.opt.1