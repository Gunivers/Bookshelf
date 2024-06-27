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
$data modify storage bs:ctx _ set value $(lambda)
execute store result score #random.int bs.data run data get storage bs:ctx _
execute store result score #random.dec bs.data run data get storage bs:ctx _ 10
scoreboard players operation #random.dec bs.data %= 10 bs.const

# Make sure expected value is valid
execute if score #random.int bs.data matches ..-1 run scoreboard players set #random.int bs.data 0
execute if score #random.int bs.data matches 11.. run scoreboard players set #random.int bs.data 10
execute if score #random.int bs.data matches 0 if score #random.dec bs.data matches 0 run scoreboard players set #random.dec bs.data 1

# Evaluate exp(-l). The result is a number between 0 and 1 (but not 0), we save it with a scale of 2147483648
execute if score #random.int bs.data matches 0 run scoreboard players set #random.exp(-l) bs.data 32768
execute if score #random.int bs.data matches 1 run scoreboard players set #random.exp(-l) bs.data 12054
execute if score #random.int bs.data matches 2 run scoreboard players set #random.exp(-l) bs.data 4434
execute if score #random.int bs.data matches 3 run scoreboard players set #random.exp(-l) bs.data 1631
execute if score #random.int bs.data matches 4 run scoreboard players set #random.exp(-l) bs.data 600
execute if score #random.int bs.data matches 5 run scoreboard players set #random.exp(-l) bs.data 221
execute if score #random.int bs.data matches 6 run scoreboard players set #random.exp(-l) bs.data 81
execute if score #random.int bs.data matches 7 run scoreboard players set #random.exp(-l) bs.data 30
execute if score #random.int bs.data matches 8 run scoreboard players set #random.exp(-l) bs.data 11
execute if score #random.int bs.data matches 9 run scoreboard players set #random.exp(-l) bs.data 4
execute if score #random.int bs.data matches 10 run scoreboard players set #random.exp(-l) bs.data 2

execute if score #random.dec bs.data matches 0 run scoreboard players operation #random.exp(-l) bs.data *= #65536 bs.const
execute if score #random.dec bs.data matches 1 run scoreboard players operation #random.exp(-l) bs.data *= #exp(-0.1)*65536 bs.const
execute if score #random.dec bs.data matches 2 run scoreboard players operation #random.exp(-l) bs.data *= #exp(-0.2)*65536 bs.const
execute if score #random.dec bs.data matches 3 run scoreboard players operation #random.exp(-l) bs.data *= #exp(-0.3)*65536 bs.const
execute if score #random.dec bs.data matches 4 run scoreboard players operation #random.exp(-l) bs.data *= #exp(-0.4)*65536 bs.const
execute if score #random.dec bs.data matches 5 run scoreboard players operation #random.exp(-l) bs.data *= #exp(-0.5)*65536 bs.const
execute if score #random.dec bs.data matches 6 run scoreboard players operation #random.exp(-l) bs.data *= #exp(-0.6)*65536 bs.const
execute if score #random.dec bs.data matches 7 run scoreboard players operation #random.exp(-l) bs.data *= #exp(-0.7)*65536 bs.const
execute if score #random.dec bs.data matches 8 run scoreboard players operation #random.exp(-l) bs.data *= #exp(-0.8)*65536 bs.const
execute if score #random.dec bs.data matches 9 run scoreboard players operation #random.exp(-l) bs.data *= #exp(-0.9)*65536 bs.const

# Draw random number using Knuth's method
scoreboard players set #random.p bs.data 2147483647
scoreboard players set #random.k bs.data -1
function bs.random:distributions/poisson/loop
return run scoreboard players operation $random.poisson bs.out = #random.k bs.data
