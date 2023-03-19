# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.18.2)
# Last verification: 19/03/2023 (1.19.4)
# Last modification: 19/03/2023 (1.19.4)

# Original path : bs.xp:add_points
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#add
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation #xp.points bs.data = @s bs.in.0

execute if score #xp.points bs.data matches 128.. run function bs.xp:add_points/child/128-

execute if score #xp.points bs.data matches 64.. run xp add @s 64 points
execute if score #xp.points bs.data matches 64.. run scoreboard players remove #xp.points bs.data 64
execute if score #xp.points bs.data matches 32.. run xp add @s 32 points
execute if score #xp.points bs.data matches 32.. run scoreboard players remove #xp.points bs.data 32
execute if score #xp.points bs.data matches 16.. run xp add @s 16 points
execute if score #xp.points bs.data matches 16.. run scoreboard players remove #xp.points bs.data 16
execute if score #xp.points bs.data matches 8.. run xp add @s 8 points
execute if score #xp.points bs.data matches 8.. run scoreboard players remove #xp.points bs.data 8
execute if score #xp.points bs.data matches 4.. run xp add @s 4 points
execute if score #xp.points bs.data matches 4.. run scoreboard players remove #xp.points bs.data 4
execute if score #xp.points bs.data matches 2.. run xp add @s 2 points
execute if score #xp.points bs.data matches 2.. run scoreboard players remove #xp.points bs.data 2
execute if score #xp.points bs.data matches 1.. run xp add @s 1 points