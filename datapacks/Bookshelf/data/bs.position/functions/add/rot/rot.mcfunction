# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.16.1)
# Last modification: 22/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#add-rotation
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result storage bs:ctx h double $(scale) run scoreboard players get @s bs.rot.h
$execute store result storage bs:ctx v double $(scale) run scoreboard players get @s bs.rot.v
function bs.position:add/rot/run with storage bs:ctx
