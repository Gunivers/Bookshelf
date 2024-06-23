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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#canonical-to-local
# ------------------------------------------------------------------------------------------------------------

# sincos(h: Phi) & sincos(v: Theta)
execute as B5-0-0-0-1 run function bs.position:convert/canonical_to_local/sincos

# X' = Z * sin(h) + X * cos(h)
scoreboard players operation #position.convert.x bs.data = @s bs.pos.z
scoreboard players operation #position.convert.x bs.data *= #position.convert.sin.h bs.data
scoreboard players operation #position.convert bs.data = @s bs.pos.x
scoreboard players operation #position.convert bs.data *= #position.convert.cos.h bs.data
scoreboard players operation #position.convert.x bs.data += #position.convert bs.data
scoreboard players operation #position.convert.x bs.data /= 1000 bs.const

# Y' = (z * cos(h) - x * sin(h)) * sin(v) + y * cos(v)
scoreboard players operation #position.convert.y bs.data = @s bs.pos.z
scoreboard players operation #position.convert.y bs.data *= #position.convert.cos.h bs.data
scoreboard players operation #position.convert bs.data = @s bs.pos.x
scoreboard players operation #position.convert bs.data *= #position.convert.sin.h bs.data
scoreboard players operation #position.convert.y bs.data -= #position.convert bs.data
execute store result score #position.convert.z bs.data run scoreboard players operation #position.convert.y bs.data /= 1000 bs.const
scoreboard players operation #position.convert.y bs.data *= #position.convert.sin.v bs.data
scoreboard players operation #position.convert bs.data = @s bs.pos.y
scoreboard players operation #position.convert bs.data *= #position.convert.cos.v bs.data
scoreboard players operation #position.convert.y bs.data += #position.convert bs.data
scoreboard players operation #position.convert.y bs.data /= 1000 bs.const

# Z' = (z * cos(h) - x * sin(h)) * cos(v) - y * sin(v)
scoreboard players operation #position.convert.z bs.data *= #position.convert.cos.v bs.data
scoreboard players operation #position.convert bs.data = @s bs.pos.y
scoreboard players operation #position.convert bs.data *= #position.convert.sin.v bs.data
scoreboard players operation #position.convert.z bs.data -= #position.convert bs.data
scoreboard players operation #position.convert.z bs.data /= 1000 bs.const

scoreboard players operation @s bs.pos.x = #position.convert.x bs.data
scoreboard players operation @s bs.pos.y = #position.convert.y bs.data
scoreboard players operation @s bs.pos.z = #position.convert.z bs.data
