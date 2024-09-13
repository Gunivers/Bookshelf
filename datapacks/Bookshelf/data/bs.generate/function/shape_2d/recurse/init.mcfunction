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

tp @s ~ ~ ~
execute if data storage bs:data generate._{direction:"xz"} run data modify storage bs:data generate._.oz set from entity @s Pos[2]
execute unless data storage bs:data generate._{direction:"xz"} run data modify storage bs:data generate._.oy set from entity @s Pos[1]
execute in minecraft:overworld run tp @s -30000000 0 1600

$function bs.generate:shape_2d/strategy/$(impl)/setup

execute if data storage bs:data generate._{direction:"xz"} rotated 0 90 run return run function bs.generate:shape_2d/recurse/next with storage bs:data generate._
execute if data storage bs:data generate._{direction:"xy"} rotated 0 0 run return run function bs.generate:shape_2d/recurse/next with storage bs:data generate._
execute if data storage bs:data generate._{direction:"zy"} rotated 90 0 run return run function bs.generate:shape_2d/recurse/next with storage bs:data generate._
