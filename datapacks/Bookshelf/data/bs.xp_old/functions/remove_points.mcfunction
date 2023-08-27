# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.18.2)
# Last verification: 19/03/2023 (1.19.4)
# Last modification: 19/03/2023 (1.19.4)

# Original path : bs.xp:remove_points
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#remove
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation #xp.backup.out.0 bs.data = @s bs.out.0
scoreboard players operation #xp.backup.in.0 bs.data = @s bs.in.0

function bs.xp:get_total_points

scoreboard players operation @s bs.in.0 = @s bs.out.0
scoreboard players operation @s bs.in.0 -= #xp.backup.in.0 bs.data

xp set @s 0 levels
xp set @s 0 points

function bs.xp:add_points

scoreboard players operation @s bs.out.0 = #xp.backup.out.0 bs.data
scoreboard players operation @s bs.in.0 = #xp.backup.in.0 bs.data