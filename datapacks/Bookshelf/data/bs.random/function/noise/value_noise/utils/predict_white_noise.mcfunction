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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/random.html#noise
# ------------------------------------------------------------------------------------------------------------
scoreboard players operation $math.sin.x bs.in = #idU bs.random
scoreboard players operation $math.sin.x bs.in *= #12 bs.const
scoreboard players operation #vector.dot_product bs.data = #idV bs.random
scoreboard players operation #vector.dot_product bs.data *= #78 bs.const
scoreboard players operation $math.sin.x bs.in += #vector.dot_product bs.data
scoreboard players operation $math.sin.x bs.in *= #100 bs.const

execute store result score #tmp bs.random run function bs.random:noise/value_noise/utils/sin

scoreboard players operation #tmp bs.random *= #seed bs.random
scoreboard players operation #white_noise_value bs.random = #tmp bs.random
scoreboard players operation #tmp bs.random /= #100 bs.const
scoreboard players operation #tmp bs.random *= #100 bs.const
return run scoreboard players operation #white_noise_value bs.random -= #tmp bs.random