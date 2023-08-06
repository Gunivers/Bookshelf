# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.0.0
# Created: 28/02/2023 (1.19.2)
# Last verification: -
# Last modification: 28/02/2023 (1.19.2)

# Original path : bs.vector:get_from__motion
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#get
# Note          :

# CODE ------------------------------------------------------------------------

execute store result score @s bs.vector.x run data get entity @s Motion[0] 1000
execute store result score @s bs.vector.y run data get entity @s Motion[1] 1000
execute store result score @s bs.vector.z run data get entity @s Motion[2] 1000