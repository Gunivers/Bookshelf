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

# 2.5 × level^2 – 40.5 × level + 360 (at levels 17–31)
# => 1/2 × (5 × level^2 - 81 × level) + 360
scoreboard players operation #xp.get_total_points.x bs.data *= 81 bs.const
scoreboard players operation #xp.get_total_points.x2 bs.data *= #xp.get_total_points.x2 bs.data
scoreboard players operation #xp.get_total_points.x2 bs.data *= 5 bs.const
scoreboard players operation #xp.get_total_points.x2 bs.data -= #xp.get_total_points.x bs.data
scoreboard players operation #xp.get_total_points.x2 bs.data /= 2 bs.const
scoreboard players operation $xp.get_total_points bs.out += #xp.get_total_points.x2 bs.data
return run scoreboard players add $xp.get_total_points bs.out 360
