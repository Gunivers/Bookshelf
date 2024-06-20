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
data modify storage bs:out random.noise[-1] append value 0.0f

# Calculate UVs
scoreboard players operation #U bs.random = #x bs.random
scoreboard players operation #V bs.random = #y bs.random
scoreboard players operation #U bs.random *= #100 bs.const
scoreboard players operation #V bs.random *= #100 bs.const
scoreboard players operation #U bs.random /= #width bs.random
scoreboard players operation #V bs.random /= #height bs.random
scoreboard players operation #U bs.random *= #4 bs.const
scoreboard players operation #V bs.random *= #4 bs.const

# Calculate Grid UVs
scoreboard players operation #u bs.random = #U bs.random
scoreboard players operation #v bs.random = #V bs.random
scoreboard players operation #u1 bs.random = #u bs.random
scoreboard players operation #v1 bs.random = #v bs.random
scoreboard players operation #u1 bs.random /= #100 bs.const
scoreboard players operation #v1 bs.random /= #100 bs.const
scoreboard players operation #u1 bs.random *= #100 bs.const
scoreboard players operation #v1 bs.random *= #100 bs.const
scoreboard players operation #u bs.random -= #u1 bs.random
scoreboard players operation #v bs.random -= #v1 bs.random
scoreboard players operation #u_presmooth bs.random = #u bs.random
scoreboard players operation #v_presmooth bs.random = #v bs.random

# Smooth Grid UVs
scoreboard players operation #u1 bs.random = #u bs.random
scoreboard players operation #v1 bs.random = #v bs.random
scoreboard players operation #u1 bs.random *= #200 bs.const
scoreboard players operation #v1 bs.random *= #200 bs.const
scoreboard players operation #u1 bs.random /= #100 bs.const
scoreboard players operation #v1 bs.random /= #100 bs.const
scoreboard players set #u2 bs.random 300
scoreboard players set #v2 bs.random 300
scoreboard players operation #u2 bs.random -= #u1 bs.random
scoreboard players operation #v2 bs.random -= #v1 bs.random
scoreboard players operation #u bs.random *= #u bs.random
scoreboard players operation #v bs.random *= #v bs.random
scoreboard players operation #u bs.random *= #u2 bs.random
scoreboard players operation #v bs.random *= #v2 bs.random
scoreboard players operation #u bs.random /= #10000 bs.const
scoreboard players operation #v bs.random /= #10000 bs.const

# Calculalte Grid IDs 
scoreboard players operation #idU bs.random = #U bs.random
scoreboard players operation #idV bs.random = #V bs.random
scoreboard players operation #idU bs.random /= #100 bs.const
scoreboard players operation #idV bs.random /= #100 bs.const

# Interpolate between bottom left and bottom right
execute store result score #bL bs.random run function bs.random:noise/value_noise/utils/predict_white_noise
scoreboard players add #idU bs.random 1
execute store result score #bR bs.random run function bs.random:noise/value_noise/utils/predict_white_noise
scoreboard players operation #b bs.random = #bL bs.random
scoreboard players operation #bL bs.random -= #bR bs.random
scoreboard players operation #bL bs.random *= #u bs.random
scoreboard players operation #bL bs.random /= #100 bs.const
scoreboard players operation #b bs.random -= #bL bs.random

# Interpolate between top left and top right
scoreboard players add #idV bs.random 1
execute store result score #tR bs.random run function bs.random:noise/value_noise/utils/predict_white_noise
scoreboard players remove #idU bs.random 1
execute store result score #tL bs.random run function bs.random:noise/value_noise/utils/predict_white_noise
scoreboard players operation #t bs.random = #tL bs.random
scoreboard players operation #tL bs.random -= #tR bs.random
scoreboard players operation #tL bs.random *= #u bs.random
scoreboard players operation #tL bs.random /= #100 bs.const
scoreboard players operation #t bs.random -= #tL bs.random

# Interpolate between top and bottom
scoreboard players operation #value bs.random = #b bs.random
scoreboard players operation #b bs.random -= #t bs.random
scoreboard players operation #b bs.random *= #v bs.random
scoreboard players operation #b bs.random /= #100 bs.const
scoreboard players operation #value bs.random -= #b bs.random

# Put into list
execute store result storage bs:out random.noise[-1][-1] float 0.01 run scoreboard players get #value bs.random
scoreboard players add #y bs.random 1
execute if score #y bs.random < #width bs.random run function bs.random:noise/value_noise/yloop