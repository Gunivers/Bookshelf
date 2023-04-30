# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.1
# Created: ??/??/???? (1.13)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: 30/04/2023 (1.19.4)

# Original path : bs.location:fast_set
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#set
# Note          :

# CODE ------------------------------------------------------------------------

tp @s 0.5 0.0 0.5

scoreboard players operation #fast_set.loc.x bs.data = @s bs.loc.x
scoreboard players operation #fast_set.loc.y bs.data = @s bs.loc.y
scoreboard players operation #fast_set.loc.z bs.data = @s bs.loc.z

execute if score @s bs.loc.x matches 1.. run function bs.location:fast_set/child/x_p
execute if score @s bs.loc.x matches ..-1 run function bs.location:fast_set/child/x_n
execute if score @s bs.loc.y matches 1.. run function bs.location:fast_set/child/y_p
execute if score @s bs.loc.y matches ..-1 run function bs.location:fast_set/child/y_n
execute if score @s bs.loc.z matches 1.. run function bs.location:fast_set/child/z_p
execute if score @s bs.loc.z matches ..-1 run function bs.location:fast_set/child/z_n
