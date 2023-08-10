# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.1
# Created: ??/??/???? (1.13)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: 30/04/2023 (1.19.4)

# Original path : bs.location:get_distance_ata
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#get-distance-as-to-at
# Note          :

# CODE ------------------------------------------------------------------------

scoreboard players operation #location.get_distance_ata.in.0 bs.data = @s bs.in.0

function bs.location:get_distance_squared_ata
scoreboard players operation @s bs.in.0 = @s bs.out.0
function #bs.math:sqrt

scoreboard players operation @s bs.in.0 = #location.get_distance_ata.in.0 bs.data
