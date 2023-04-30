# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.0
# Created: ??/??/???? (1.12)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: ??/??/???? (1.16.1)

# Original path : bs.location:get/x
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#get-location
# Note          : It was excessively more impressive in 1.12...

# CODE ------------------------------------------------------------------------

summon marker ~ ~ ~ {Tags:["bs.location.get"]}

execute store result score @s bs.loc.x run data get entity @e[type=marker,tag=bs.location.get,limit=1,sort=nearest] Pos[0] 1

kill @e[type=marker,tag=bs.location.get]