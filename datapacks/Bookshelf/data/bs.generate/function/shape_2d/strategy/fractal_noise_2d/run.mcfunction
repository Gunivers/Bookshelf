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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/generate.html#shape-2d
# ------------------------------------------------------------------------------------------------------------

scoreboard players operation $random.fractal_noise_2d.x bs.in = $generate.x bs.data
scoreboard players operation $random.fractal_noise_2d.y bs.in = $generate.y bs.data
scoreboard players operation $random.fractal_noise_2d.x bs.in *= #generate.k bs.data
scoreboard players operation $random.fractal_noise_2d.y bs.in *= #generate.k bs.data

function #bs.random:fractal_noise_2d
$$(cb)
