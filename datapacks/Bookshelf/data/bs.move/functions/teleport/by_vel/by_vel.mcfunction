# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 25/12/2023 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/move.html#teleport
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute if entity @s[predicate=!bs.move:has_vel] run return 0
$execute store result storage bs:ctx x double $(scale) run scoreboard players get @s bs.vel.x
$execute store result storage bs:ctx y double $(scale) run scoreboard players get @s bs.vel.y
$execute store result storage bs:ctx z double $(scale) run scoreboard players get @s bs.vel.z

execute at @s run function bs.move:teleport/by_vel/run with storage bs:ctx
