# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.0
# Created: ??/??/???? (1.12)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: ??/??/???? (1.16.1)

# Original path : bs.location:get/x
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#set
# Note          : It was excessively more impressive in 1.12...

# CODE ------------------------------------------------------------------------

execute if entity @s[type=minecraft:player] run function bs.location:set/x/child/player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[0] double 1 run scoreboard players add @s bs.loc.x 0
