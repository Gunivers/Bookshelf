# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       :
# Contributors  : 

# Version: 2.1
# Created: ??/??/???? (1.12)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: 30/04/2023 (1.19.4)

# Original path : bs.location:get/x/scale/3
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#get-location
# Note          :

# CODE ------------------------------------------------------------------------

summon marker ~ ~ ~ {Tags:["bs.location.get"]}

execute store result score @s bs.loc.x run data get entity @e[type=marker,tag=bs.location.get,limit=1,sort=nearest] Pos[0] 1000

kill @e[type=marker,tag=bs.location.get]