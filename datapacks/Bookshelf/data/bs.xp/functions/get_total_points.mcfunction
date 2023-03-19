# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.18.2)
# Last verification: 19/03/2023 (1.19.4)
# Last modification: 19/03/2023 (1.19.4)

# Original path : bs.xp:get_total_points
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#get
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

execute store result score @s bs.out.0 run xp query @s points
execute store result score #xp.levels bs.data run xp query @s levels

execute if score #xp.levels bs.data matches 1..15 run function bs.xp:get_total_points/child/1-15
execute if score #xp.levels bs.data matches 16..30 run function bs.xp:get_total_points/child/16-30
execute if score #xp.levels bs.data matches 31.. run function bs.xp:get_total_points/child/31-