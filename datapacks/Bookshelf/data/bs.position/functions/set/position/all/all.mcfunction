# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 3.0
# Created: ??/??/???? (1.13)
# Last modification: 31/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#set-position
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result storage bs:ctx x double $(scale) run scoreboard players get @s bs.pos.x
$execute store result storage bs:ctx y double $(scale) run scoreboard players get @s bs.pos.y
$execute store result storage bs:ctx z double $(scale) run scoreboard players get @s bs.pos.z
function bs.position:set/position/all/run with storage bs:ctx
