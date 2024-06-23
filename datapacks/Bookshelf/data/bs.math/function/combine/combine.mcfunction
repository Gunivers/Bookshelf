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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#combine
# ------------------------------------------------------------------------------------------------------------

# Note: the larger bs.in must be smaller than 46342

# C(n,k)

# keep n, k > 0
scoreboard players operation #math.combine.n bs.data = $math.combine.n bs.in
scoreboard players operation #math.combine.n bs.data > 0 bs.const
scoreboard players operation #math.combine.k bs.data = $math.combine.k bs.in
scoreboard players operation #math.combine.k bs.data > 0 bs.const

# keep n <= k
execute if score #math.combine.n bs.data > #math.combine.k bs.data run scoreboard players operation #math.combine.n bs.data >< #math.combine.k bs.data

# get smaller n
scoreboard players operation #math.combine.temp bs.data = #math.combine.k bs.data
scoreboard players operation #math.combine.temp bs.data -= #math.combine.n bs.data
scoreboard players operation #math.combine.n bs.data < #math.combine.temp bs.data

# break if n is special
execute if score #math.combine.n bs.data matches 0 run scoreboard players set $math.combine bs.out 1
execute if score #math.combine.n bs.data matches 1 run scoreboard players operation $math.combine bs.out = #math.combine.k bs.data
execute if score #math.combine.n bs.data matches 2.. run function bs.math:combine/recurse/init

return run scoreboard players get $math.combine bs.out
