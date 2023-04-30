# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       :
# Contributors  : 

# Version: 2.1
# Created: ??/??/???? (1.13)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: 30/04/2023 (1.19.4)

# Original path : bs.location:get_relative_ata
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#get-relative-as-to-at
# Note          :

# CODE ------------------------------------------------------------------------

execute store result score #X bs.data run data get entity @s Pos[0] 1
execute store result score #Y bs.data run data get entity @s Pos[1] 1
execute store result score #Z bs.data run data get entity @s Pos[2] 1

summon marker ~ ~ ~ {Tags:["bs","bs.location.GetDistance"]}

execute store result score #DX bs.data run data get entity @e[type=marker,tag=bs.location.GetDistance,limit=1] Pos[0] 1
execute store result score #DY bs.data run data get entity @e[type=marker,tag=bs.location.GetDistance,limit=1] Pos[1] 1
execute store result score #DZ bs.data run data get entity @e[type=marker,tag=bs.location.GetDistance,limit=1] Pos[2] 1

kill @e[type=marker,tag=bs.location.GetDistance]

scoreboard players operation @s bs.loc.rx -= #X bs.data
scoreboard players operation @s bs.loc.ry -= #Y bs.data
scoreboard players operation @s bs.loc.rz -= #Z bs.data