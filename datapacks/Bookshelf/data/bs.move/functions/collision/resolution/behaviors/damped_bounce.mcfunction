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
# ------------------------------------------------------------------------------------------------------------

# reverse a component depending on the surface that was hit
execute if score $move.hit_face bs.data matches 4..5 run scoreboard players operation $move.vel_remaining.x bs.data /= -2 bs.const
execute if score $move.hit_face bs.data matches 0..1 run scoreboard players operation $move.vel_remaining.y bs.data /= -2 bs.const
execute if score $move.hit_face bs.data matches 2..3 run scoreboard players operation $move.vel_remaining.z bs.data /= -2 bs.const

# reverse a component and reduce the speed by a factor of 2
execute if score $move.hit_face bs.data matches 4..5 run scoreboard players operation @s bs.vel.x /= -2 bs.const
execute if score $move.hit_face bs.data matches 0..1 run scoreboard players operation @s bs.vel.y /= -2 bs.const
execute if score $move.hit_face bs.data matches 2..3 run scoreboard players operation @s bs.vel.z /= -2 bs.const
execute unless score $move.hit_face bs.data matches 4..5 run scoreboard players operation @s bs.vel.x /= 2 bs.const
execute unless score $move.hit_face bs.data matches 0..1 run scoreboard players operation @s bs.vel.y /= 2 bs.const
execute unless score $move.hit_face bs.data matches 2..3 run scoreboard players operation @s bs.vel.z /= 2 bs.const
