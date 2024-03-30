# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 21/11/2023 (1.20.3)
# Last modification: 30/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/hitbox.html#is-inside
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute if entity @s[type=#bs.hitbox:intangible] run return 0
execute as B5-0-0-0-1 run function bs.hitbox:is_in_entity/get_pos
function #bs.hitbox:get_entity

execute if entity @s[type=#bs.hitbox:is_composite] run return run function bs.hitbox:is_in_block/check
return run function bs.hitbox:is_in_entity/check
