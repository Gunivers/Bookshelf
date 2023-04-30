# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: 30/04/2023 (1.19.4)

# Original path : bs.location:set/z/scale/3
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#set-location
# Note          :

# CODE ------------------------------------------------------------------------

execute if entity @s[type=minecraft:player] run function bs.location:set/z/scale/3/child/player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[2] double 0.001 run scoreboard players get @s bs.loc.z
