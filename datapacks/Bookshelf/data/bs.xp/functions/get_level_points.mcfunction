# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.18.2)
# Last verification: 19/03/2023 (1.19.4)
# Last modification: 19/03/2023 (1.19.4)

# Original path : bs.xp:get_level_points
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#get
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

execute if score @s bs.in.0 matches 0 run scoreboard players set @s bs.out.0 7

execute if score @s bs.in.0 matches 1..15 run function bs.xp:get_level_points/child/1-15
execute if score @s bs.in.0 matches 16..30 run function bs.xp:get_level_points/child/16-30
execute if score @s bs.in.0 matches 31.. run function bs.xp:get_level_points/child/31-