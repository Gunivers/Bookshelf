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

execute store result score $xp.get_remaining_points bs.out run function #bs.xp:get_max_points
execute store result score #xp.get_remaining_points bs.data run xp query @s points
return run scoreboard players operation $xp.get_remaining_points bs.out -= #xp.get_remaining_points bs.data
