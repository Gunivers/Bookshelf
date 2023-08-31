# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 3.0
# Created: ??/??/???? (1.13)
# Last modification: 31/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#set-position
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute at @s run tp 72398515-296d-4e77-bd30-412f6f65d642 ~ ~ ~
$execute store result entity 72398515-296d-4e77-bd30-412f6f65d642 Pos[0] double $(scale) run scoreboard players get @s bs.pos.x
execute at 72398515-296d-4e77-bd30-412f6f65d642 run tp @s ~ ~ ~
tp 72398515-296d-4e77-bd30-412f6f65d642 0 0 0 0 0
