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
# Modified from https://github.com/Aeldrion/Minecraft-Random

# Calculate size
$scoreboard players set #size bs.random $(max)
$scoreboard players remove #size bs.random $(min)
scoreboard players add #size bs.random 1

# Calculate maximum authorized value
scoreboard players set #max bs.random 2147483647
scoreboard players operation #max bs.random /= #size bs.random
scoreboard players operation #max bs.random *= #size bs.random

# Loop
function bs.random:uniform/loop
scoreboard players operation $random.uniform bs.out = #lcg bs.random

# Get within desired range
scoreboard players operation $random.uniform bs.out %= #size bs.random
scoreboard players operation $random.uniform bs.out += $min bs.random

return run scoreboard players get $random.uniform bs.out