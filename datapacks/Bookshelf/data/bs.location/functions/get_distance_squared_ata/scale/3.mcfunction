# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       :
# Contributors  : 

# Version: (2.1
# Created: ??/??/???? (1.13)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: 30/04/2023 (1.19.4)

# Original path : bs.location:get_distance_squared_ata/scale/3
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#get-distance-as-to-at
# Note          :

# CODE ------------------------------------------------------------------------

execute store result score #X bs.data run data get entity @s Pos[0] 1000
execute store result score #Y bs.data run data get entity @s Pos[1] 1000
execute store result score #Z bs.data run data get entity @s Pos[2] 1000

summon marker ~ ~ ~ {Tags:["bs","bs.location.GetDistance"]}

execute store result score #DX bs.data run data get entity @e[type=marker,tag=bs.location.GetDistance,limit=1] Pos[0] 1000
execute store result score #DY bs.data run data get entity @e[type=marker,tag=bs.location.GetDistance,limit=1] Pos[1] 1000
execute store result score #DZ bs.data run data get entity @e[type=marker,tag=bs.location.GetDistance,limit=1] Pos[2] 1000

kill @e[type=marker,tag=bs.location.GetDistance]

scoreboard players operation #DX bs.data -= #X bs.data
scoreboard players operation #DY bs.data -= #Y bs.data
scoreboard players operation #DZ bs.data -= #Z bs.data

scoreboard players operation #DX bs.data *= #DX bs.data
scoreboard players operation #DY bs.data *= #DY bs.data
scoreboard players operation #DZ bs.data *= #DZ bs.data

scoreboard players operation @s bs.out.0 = #DX bs.data
scoreboard players operation @s bs.out.0 += #DY bs.data
scoreboard players operation @s bs.out.0 += #DZ bs.data
