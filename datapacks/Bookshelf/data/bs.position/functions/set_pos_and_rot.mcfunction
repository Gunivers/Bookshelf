# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 09/09/2023 (1.20.2)
# Last modification: 09/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result entity B5-0-0-0-1 Pos[0] double $(scale) run scoreboard players get @s bs.pos.x
$execute store result entity B5-0-0-0-1 Pos[1] double $(scale) run scoreboard players get @s bs.pos.y
$execute store result entity B5-0-0-0-1 Pos[2] double $(scale) run scoreboard players get @s bs.pos.z
$execute store result entity B5-0-0-0-1 Rotation[0] float $(scale) run scoreboard players get @s bs.rot.h
$execute store result entity B5-0-0-0-1 Rotation[1] float $(scale) run scoreboard players get @s bs.rot.v
execute at B5-0-0-0-1 run tp @s ~ ~ ~ ~ ~
tp B5-0-0-0-1 0 0 0 0 0
