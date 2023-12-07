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

execute if block ~ ~ ~ #bs.hitbox:intangible run return 0
execute unless block ~ ~ ~ #bs.hitbox:is_shaped run return 1
function #bs.hitbox:get_block

tp B5-0-0-0-1 ~ ~ ~
execute store result score #hitbox.x bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #hitbox.y bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #hitbox.z bs.data run data get entity B5-0-0-0-1 Pos[2] 1000
execute in minecraft:overworld run tp B5-0-0-0-1 0 0 0

scoreboard players operation #hitbox.x bs.data %= 1000 bs.const
scoreboard players operation #hitbox.y bs.data %= 1000 bs.const
scoreboard players operation #hitbox.z bs.data %= 1000 bs.const

return run function bs.hitbox:is_in_block/check
