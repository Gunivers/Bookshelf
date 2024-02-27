# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 13/12/2023 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/move.html#set-motion
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result entity @s Motion[0] double $(scale) run scoreboard players get @s bs.vel.x
$execute store result entity @s Motion[1] double $(scale) run scoreboard players get @s bs.vel.y
$execute store result entity @s Motion[2] double $(scale) run scoreboard players get @s bs.vel.z
