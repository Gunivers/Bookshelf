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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/random.html#noise-generators
# ------------------------------------------------------------------------------------------------------------

scoreboard players remove #i bs.ctx 1
data modify storage bs:out random.white_noise_1d append value 0f
execute store result storage bs:out random.white_noise_1d[-1] float .001 run random value 1..1000
execute if score #i bs.ctx matches 1.. run function bs.random:noise/white_noise_1d/loop
