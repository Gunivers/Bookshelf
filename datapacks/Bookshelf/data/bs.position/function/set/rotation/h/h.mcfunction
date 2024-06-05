# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof, theogiraudet
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#set-rotation
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result storage bs:ctx x double $(scale) run scoreboard players get @s bs.rot.h
execute at @s run function bs.position:set/rotation/h/run with storage bs:ctx
