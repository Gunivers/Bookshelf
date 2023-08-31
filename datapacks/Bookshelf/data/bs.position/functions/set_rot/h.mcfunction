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

execute rotated as @s run tp 72398515-296d-4e77-bd30-412f6f65d642 0 0 0 ~ ~
$execute store result entity 72398515-296d-4e77-bd30-412f6f65d642 Rotation[0] float $(scale) run scoreboard players get @s bs.rot.h
execute rotated as 72398515-296d-4e77-bd30-412f6f65d642 positioned as @s run tp @s ~ ~ ~ ~ ~
