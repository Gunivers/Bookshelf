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

scoreboard players set #y bs.random 0
data modify storage bs:out random.noise append value []
function bs.random:noise/value_noise/yloop
scoreboard players add #x bs.random 1
scoreboard players operation #call_iter bs.random = #x bs.random
scoreboard players operation #call_iter bs.random %= #spacing bs.random
execute if score #call_iter bs.random matches 0 run function bs.random:noise/value_noise/exec with storage bs:random exec_macro
execute if score #call_iter bs.random matches 0 if score #postpone bs.random matches 1.. if score #x bs.random < #height bs.random run schedule function bs.random:noise/value_noise/xloop 1t
execute if score #call_iter bs.random matches 0 if score #postpone bs.random matches 1.. if score #x bs.random < #height bs.random run return 1
execute if score #x bs.random = #height bs.random unless score #call_iter bs.random matches 0 run function bs.random:noise/value_noise/exec with storage bs:random exec_macro
execute if score #x bs.random < #height bs.random run function bs.random:noise/value_noise/xloop