# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: 30/04/2023 (1.19.4)

# Original path : bs.location:set/y
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#set-location
# Note          :

# CODE ------------------------------------------------------------------------

execute if entity @s[type=minecraft:player] run function bs.location:set/y/child/player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[1] double 1 run scoreboard players add @s bs.loc.y 0
