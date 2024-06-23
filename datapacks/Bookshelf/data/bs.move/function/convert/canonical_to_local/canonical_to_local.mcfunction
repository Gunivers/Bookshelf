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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/move.html#canonical-to-local
# ------------------------------------------------------------------------------------------------------------

# sincos(h: Phi) & sincos(v: Theta)
execute as B5-0-0-0-1 run function bs.move:convert/canonical_to_local/sincos

# X' = Z * sin(h) + X * cos(h)
scoreboard players operation #move.canonical_to_local.x bs.data = @s bs.vel.z
scoreboard players operation #move.canonical_to_local.x bs.data *= #move.canonical_to_local.sin.h bs.data
scoreboard players operation #move.canonical_to_local bs.data = @s bs.vel.x
scoreboard players operation #move.canonical_to_local bs.data *= #move.canonical_to_local.cos.h bs.data
scoreboard players operation #move.canonical_to_local.x bs.data += #move.canonical_to_local bs.data
scoreboard players operation #move.canonical_to_local.x bs.data /= 1000 bs.const

# Y' = (z * cos(h) - x * sin(h)) * sin(v) + y * cos(v)
scoreboard players operation #move.canonical_to_local.y bs.data = @s bs.vel.z
scoreboard players operation #move.canonical_to_local.y bs.data *= #move.canonical_to_local.cos.h bs.data
scoreboard players operation #move.canonical_to_local bs.data = @s bs.vel.x
scoreboard players operation #move.canonical_to_local bs.data *= #move.canonical_to_local.sin.h bs.data
scoreboard players operation #move.canonical_to_local.y bs.data -= #move.canonical_to_local bs.data
execute store result score #move.canonical_to_local.z bs.data run scoreboard players operation #move.canonical_to_local.y bs.data /= 1000 bs.const
scoreboard players operation #move.canonical_to_local.y bs.data *= #move.canonical_to_local.sin.v bs.data
scoreboard players operation #move.canonical_to_local bs.data = @s bs.vel.y
scoreboard players operation #move.canonical_to_local bs.data *= #move.canonical_to_local.cos.v bs.data
scoreboard players operation #move.canonical_to_local.y bs.data += #move.canonical_to_local bs.data
scoreboard players operation #move.canonical_to_local.y bs.data /= 1000 bs.const

# Z' = (z * cos(h) - x * sin(h)) * cos(v) - y * sin(v)
scoreboard players operation #move.canonical_to_local.z bs.data *= #move.canonical_to_local.cos.v bs.data
scoreboard players operation #move.canonical_to_local bs.data = @s bs.vel.y
scoreboard players operation #move.canonical_to_local bs.data *= #move.canonical_to_local.sin.v bs.data
scoreboard players operation #move.canonical_to_local.z bs.data -= #move.canonical_to_local bs.data
scoreboard players operation #move.canonical_to_local.z bs.data /= 1000 bs.const

scoreboard players operation @s bs.vel.x = #move.canonical_to_local.x bs.data
scoreboard players operation @s bs.vel.y = #move.canonical_to_local.y bs.data
scoreboard players operation @s bs.vel.z = #move.canonical_to_local.z bs.data
