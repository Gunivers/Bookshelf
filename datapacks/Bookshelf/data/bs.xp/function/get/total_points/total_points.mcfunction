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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#get
# ------------------------------------------------------------------------------------------------------------

execute store result score $xp.get_total_points bs.out run xp query @s points
execute store result score #xp.get_total_points.x bs.data store result score #xp.get_total_points.x2 bs.data run xp query @s levels
execute if score #xp.get_total_points.x bs.data matches 1..16 run return run function bs.xp:get/total_points/range_1
execute if score #xp.get_total_points.x bs.data matches 17..31 run return run function bs.xp:get/total_points/range_2
execute if score #xp.get_total_points.x bs.data matches 32.. run return run function bs.xp:get/total_points/range_3
