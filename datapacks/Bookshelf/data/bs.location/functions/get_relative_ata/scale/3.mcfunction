#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:get_relative_as_to_at/scale/3
# Documentation: https://bs-core.readthedocs.io//entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.1
# Created: ??/??/???? (1.13)
# Last verification: 01/05/2023 (1.19.4)
# Last modification: 01/05/2023 (1.19.4)

# Original path : bs.location:get_relative_ata/scale/3
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#get-relative-corrdinates-as-to-at
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

summon marker ~ ~ ~ {Tags:["bs","bs.location.GetRelative"]}

execute store result score #bs.loc.x bs.data run data get entity @s Pos[0] 1000
execute store result score #bs.loc.y bs.data run data get entity @s Pos[1] 1000
execute store result score #bs.loc.z bs.data run data get entity @s Pos[2] 1000

execute store result score @s bs.loc.rx run data get entity @e[type=marker,tag=bs.location.GetRelative,limit=1] Pos[0] 1000
execute store result score @s bs.loc.ry run data get entity @e[type=marker,tag=bs.location.GetRelative,limit=1] Pos[1] 1000
execute store result score @s bs.loc.rz run data get entity @e[type=marker,tag=bs.location.GetRelative,limit=1] Pos[2] 1000

scoreboard players operation @s bs.loc.rx -= #bs.loc.x bs.data
scoreboard players operation @s bs.loc.ry -= #bs.loc.y bs.data
scoreboard players operation @s bs.loc.rz -= #bs.loc.z bs.data

kill @e[type=marker,tag=bs.location.GetRelative]
