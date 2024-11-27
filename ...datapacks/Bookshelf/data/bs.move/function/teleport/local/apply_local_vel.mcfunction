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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/move.html#apply-velocity
# ------------------------------------------------------------------------------------------------------------

execute if entity @s[predicate=!bs.move:has_vel] run return 0
$execute store result storage bs:ctx x double $(scale) run scoreboard players get @s bs.vel.x
$execute store result storage bs:ctx y double $(scale) run scoreboard players get @s bs.vel.y
$execute store result storage bs:ctx z double $(scale) run scoreboard players get @s bs.vel.z

execute at @s run function bs.move:teleport/local/run with storage bs:ctx
