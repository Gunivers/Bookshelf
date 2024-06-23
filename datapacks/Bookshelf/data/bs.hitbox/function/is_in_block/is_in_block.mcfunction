# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/hitbox.html#is-inside
# ------------------------------------------------------------------------------------------------------------

execute if block ~ ~ ~ #bs.hitbox:intangible run return 0
execute unless block ~ ~ ~ #bs.hitbox:is_composite run return 1
function #bs.hitbox:get_block

execute as B5-0-0-0-1 run function bs.hitbox:is_in_block/get_pos
scoreboard players operation #hitbox.x bs.data %= 1000 bs.const
scoreboard players operation #hitbox.y bs.data %= 1000 bs.const
scoreboard players operation #hitbox.z bs.data %= 1000 bs.const

return run function bs.hitbox:is_in_block/check
