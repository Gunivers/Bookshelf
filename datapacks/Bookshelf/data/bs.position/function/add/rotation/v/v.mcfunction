# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.16.1)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#add-rotation
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result storage bs:ctx y double $(scale) run scoreboard players get @s bs.rot.v
execute at @s run function bs.position:add/rotation/v/run with storage bs:ctx
