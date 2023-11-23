# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 21/11/2023 (1.20.3)
# Last modification: 21/11/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/hitbox.html#is-inside
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data remove storage bs:out hitbox
function #bs.hitbox:get_entity

tp B5-0-0-0-1 ~ ~ ~
execute store result score #hitbox.x bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #hitbox.y bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #hitbox.z bs.data run data get entity B5-0-0-0-1 Pos[2] 1000
tp B5-0-0-0-1 0 0 0

execute if data storage bs:out hitbox run return run function bs.hitbox:is_in_block/check
return run function bs.hitbox:is_in_entity/check
