# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 17/10/2023 (1.20.2)
# Last modification: 17/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#helpers
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players operation $(name).0 $(objective) = @s bs.pos.x
$scoreboard players operation $(name).1 $(objective) = @s bs.pos.y
$scoreboard players operation $(name).2 $(objective) = @s bs.pos.z
