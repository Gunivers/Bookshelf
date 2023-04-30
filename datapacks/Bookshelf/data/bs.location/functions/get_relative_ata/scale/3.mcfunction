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

# Authors       :
# Contributors  : 

# Version: (system version)
# Created: jj/mm/yyyy (minecraft version)
# Last verification: jj/mm/yyyy (minecraft version)
# Last modification: jj/mm/yyyy (minecraft version)

# Original path : bs.location:get_relative_ata/scale/3
# Documentation : https://link.to/documentation/page
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

summon marker ~ ~ ~ {Tags:["bs","bs.location.GetRelative"]}

execute store result score #bs.loc.x bs.data run data get entity @s Pos[0] 1000
execute store result score #bs.loc.y bs.data run data get entity @s Pos[1] 1000
execute store result score #bs.loc.z bs.data run data get entity @s Pos[2] 1000

execute store result score @s bs.link.rx run data get entity @e[type=marker,tag=bs.location.GetRelative,limit=1] Pos[0] 1000
execute store result score @s bs.link.ry run data get entity @e[type=marker,tag=bs.location.GetRelative,limit=1] Pos[1] 1000
execute store result score @s bs.link.rz run data get entity @e[type=marker,tag=bs.location.GetRelative,limit=1] Pos[2] 1000

scoreboard players operation @s bs.link.rx -= #bs.loc.x bs.data
scoreboard players operation @s bs.link.ry -= #bs.loc.y bs.data
scoreboard players operation @s bs.link.rz -= #bs.loc.z bs.data

kill @e[type=marker,tag=bs.location.GetRelative]
