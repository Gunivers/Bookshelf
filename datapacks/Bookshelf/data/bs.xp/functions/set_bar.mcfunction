# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.18.2)
# Last verification: 19/03/2023 (1.19.4)
# Last modification: 19/03/2023 (1.19.4)

# Original path : bs.xp:set_bar
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#set
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation #xp.backup.out.0 bs.data = @s bs.out.0
scoreboard players operation #xp.backup.in.0 bs.data = @s bs.in.0
execute store result score #xp.levels bs.data run xp query @s levels

xp set @s 130 levels

scoreboard players set @s bs.in.0 1012
scoreboard players operation @s bs.in.0 *= #xp.backup.in.0 bs.data
scoreboard players operation @s bs.in.0 /= 100 bs.const
execute if score @s bs.in.0 = @s bs.out.0 run scoreboard players remove @s bs.in.0 1
function bs.xp:set_points

scoreboard players operation @s bs.in.0 = #xp.levels bs.data
function bs.xp:set_levels

scoreboard players operation @s bs.out.0 = #xp.backup.out.0 bs.data
scoreboard players operation @s bs.in.0 = #xp.backup.in.0 bs.data