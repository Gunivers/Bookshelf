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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/random.html#random-distributions
# ------------------------------------------------------------------------------------------------------------

# Modified from https://github.com/Aeldrion/Minecraft-Random

# Save expected value as two scores
$scoreboard players set #lambda_int bs.random $(lambda)
scoreboard players operation #lambda_int bs.random /= #10 bs.const
$scoreboard players set #lambda_dec bs.random $(lambda)
scoreboard players operation #lambda_dec bs.random %= #10 bs.const

# Make sure expected value is valid
execute if score #lambda_int bs.random matches ..-1 run scoreboard players set #lambda_int bs.random 0
execute if score #lambda_int bs.random matches 11.. run scoreboard players set #lambda_int bs.random 10
execute if score #lambda_int bs.random matches 0 if score #lambda_dec bs.random matches 0 run scoreboard players set #lambda_dec bs.random 1

# Evaluate exp(-l). The result is a number between 0 and 1 (but not 0), we save it with a scale of 2147483648
execute if score #lambda_int bs.random matches 0 run scoreboard players set #exp(-l) bs.const 32768
execute if score #lambda_int bs.random matches 1 run scoreboard players set #exp(-l) bs.const 12054
execute if score #lambda_int bs.random matches 2 run scoreboard players set #exp(-l) bs.const 4434
execute if score #lambda_int bs.random matches 3 run scoreboard players set #exp(-l) bs.const 1631
execute if score #lambda_int bs.random matches 4 run scoreboard players set #exp(-l) bs.const 600
execute if score #lambda_int bs.random matches 5 run scoreboard players set #exp(-l) bs.const 221
execute if score #lambda_int bs.random matches 6 run scoreboard players set #exp(-l) bs.const 81
execute if score #lambda_int bs.random matches 7 run scoreboard players set #exp(-l) bs.const 30
execute if score #lambda_int bs.random matches 8 run scoreboard players set #exp(-l) bs.const 11
execute if score #lambda_int bs.random matches 9 run scoreboard players set #exp(-l) bs.const 4
execute if score #lambda_int bs.random matches 10 run scoreboard players set #exp(-l) bs.const 2

execute if score #lambda_dec bs.random matches 0 run scoreboard players operation #exp(-l) bs.const *= #65536 bs.const
execute if score #lambda_dec bs.random matches 1 run scoreboard players operation #exp(-l) bs.const *= #exp(-0.1)*65536 bs.const
execute if score #lambda_dec bs.random matches 2 run scoreboard players operation #exp(-l) bs.const *= #exp(-0.2)*65536 bs.const
execute if score #lambda_dec bs.random matches 3 run scoreboard players operation #exp(-l) bs.const *= #exp(-0.3)*65536 bs.const
execute if score #lambda_dec bs.random matches 4 run scoreboard players operation #exp(-l) bs.const *= #exp(-0.4)*65536 bs.const
execute if score #lambda_dec bs.random matches 5 run scoreboard players operation #exp(-l) bs.const *= #exp(-0.5)*65536 bs.const
execute if score #lambda_dec bs.random matches 6 run scoreboard players operation #exp(-l) bs.const *= #exp(-0.6)*65536 bs.const
execute if score #lambda_dec bs.random matches 7 run scoreboard players operation #exp(-l) bs.const *= #exp(-0.7)*65536 bs.const
execute if score #lambda_dec bs.random matches 8 run scoreboard players operation #exp(-l) bs.const *= #exp(-0.8)*65536 bs.const
execute if score #lambda_dec bs.random matches 9 run scoreboard players operation #exp(-l) bs.const *= #exp(-0.9)*65536 bs.const

# Draw bs.const number using Knuth's method
scoreboard players operation #L bs.random = #exp(-l) bs.const
scoreboard players set #p bs.random 2147483647
scoreboard players set #k bs.random -1
execute if score $min bs.random matches -2147483648..2147483647 run scoreboard players operation #user_min_input bs.random = $min bs.random
execute if score $max bs.random matches -2147483648..2147483647 run scoreboard players operation #user_max_input bs.random = $max bs.random
function bs.random:distributions/poisson/loop
scoreboard players operation $random.poisson bs.out = #k bs.random

# Clean up
execute unless score #user_min_input bs.random matches -2147483648..2147483647 run scoreboard players reset $min bs.random
execute unless score #user_max_input bs.random matches -2147483648..2147483647 run scoreboard players reset $max bs.random
execute if score #user_min_input bs.random matches -2147483648..2147483647 run scoreboard players operation $min bs.random = #user_min_input bs.random
execute if score #user_max_input bs.random matches -2147483648..2147483647 run scoreboard players operation $max bs.random = #user_max_input bs.random
scoreboard players reset #user_min_input bs.random
scoreboard players reset #user_max_input bs.random
return run scoreboard players get $random.poisson bs.out