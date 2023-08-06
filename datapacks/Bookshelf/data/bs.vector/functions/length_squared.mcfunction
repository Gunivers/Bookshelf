# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.0
# Created: ??/??/???? (1.13)
# Last verification: ??/??/???? (1.13)
# Last modification: ??/??/???? (1.13)

# Original path : bs.vector:length_squared
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#get-length
# Note          :

# CODE ------------------------------------------------------------------------

scoreboard players operation #vector.x2 bs.data = @s bs.vector.x
scoreboard players operation #vector.x2 bs.data *= @s bs.vector.x

scoreboard players operation #vector.y2 bs.data = @s bs.vector.y
scoreboard players operation #vector.y2 bs.data *= @s bs.vector.y

scoreboard players operation #vector.z2 bs.data = @s bs.vector.z
scoreboard players operation #vector.z2 bs.data *= @s bs.vector.z

scoreboard players operation @s bs.out.0 = #vector.x2 bs.data
scoreboard players operation @s bs.out.0 += #vector.y2 bs.data
scoreboard players operation @s bs.out.0 += #vector.z2 bs.data

scoreboard players operation @s bs.out.0 /= 1000 bs.const

