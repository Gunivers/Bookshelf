# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 17/10/2023 (1.20.2)
# Last modification: 17/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#helpers
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players operation @s bs.pos.x = $(name).0 $(objective)
$scoreboard players operation @s bs.pos.y = $(name).1 $(objective)
$scoreboard players operation @s bs.pos.z = $(name).2 $(objective)
