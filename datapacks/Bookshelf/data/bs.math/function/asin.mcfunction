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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#inverse-trigonometry
# ------------------------------------------------------------------------------------------------------------

# Note: This algorithm is taken from the Handbook of Mathematical Functions (M. Abramowitz and I.A. Stegun, Ed.)

scoreboard players operation #math.asin.x bs.data = $math.asin.x bs.in
execute if score $math.asin.x bs.in matches ..-1 run scoreboard players operation #math.asin.x bs.data *= -1 bs.const

scoreboard players set $math.asin bs.out 107311
scoreboard players operation $math.asin bs.out *= #math.asin.x bs.data
scoreboard players operation $math.asin bs.out /= 1000 bs.const
scoreboard players remove $math.asin bs.out 425484
scoreboard players operation $math.asin bs.out *= #math.asin.x bs.data
scoreboard players operation $math.asin bs.out /= 1000 bs.const
scoreboard players add $math.asin bs.out 1215325
scoreboard players operation $math.asin bs.out *= #math.asin.x bs.data
scoreboard players operation $math.asin bs.out /= 1000 bs.const
scoreboard players remove $math.asin bs.out 9000000
scoreboard players operation $math.asin bs.out /= 100 bs.const

scoreboard players operation $math.isqrt.x bs.in >< #math.asin.x bs.data
scoreboard players operation $math.isqrt.x bs.in *= -100000 bs.const
scoreboard players add $math.isqrt.x bs.in 100000000
function #bs.math:isqrt
scoreboard players operation $math.isqrt.x bs.in >< #math.asin.x bs.data
scoreboard players operation $math.asin bs.out *= $math.isqrt bs.out
scoreboard players operation $math.asin bs.out /= 100000 bs.const

scoreboard players add $math.asin bs.out 9000
execute if score $math.asin.x bs.in matches ..-1 run scoreboard players operation $math.asin bs.out *= -1 bs.const

return run scoreboard players get $math.asin bs.out
