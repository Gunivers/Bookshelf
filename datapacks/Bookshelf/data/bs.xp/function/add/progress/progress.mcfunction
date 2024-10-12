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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#add-remove
# ------------------------------------------------------------------------------------------------------------

# level 111111129 => max_points = 1000000002
$execute store result storage bs:ctx x int 1 store result score #p bs.ctx run data get storage bs:const xp.progress $(progress)
execute store result storage bs:ctx y int 1 run xp query @s levels
xp set @s 111111129 levels
execute store result score #x bs.ctx run xp query @s points
scoreboard players operation #p bs.ctx += #x bs.ctx
execute if score #p bs.ctx matches ..0 run xp set @s 0 points
execute if score #p bs.ctx matches 1000000000.. run xp set @s 1000000000 points
execute if score #p bs.ctx matches 1..999999999 run function bs.xp:add/progress/apply with storage bs:ctx
function bs.xp:utils/restore_levels with storage bs:ctx
