# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof, theogiraudet
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 31/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#set-rotation
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result entity B5-0-0-0-1 Rotation[0] float $(scale) run scoreboard players get @s bs.rot.h
$execute store result entity B5-0-0-0-1 Rotation[1] float $(scale) run scoreboard players get @s bs.rot.v
execute rotated as B5-0-0-0-1 positioned as @s run tp @s ~ ~ ~ ~ ~
