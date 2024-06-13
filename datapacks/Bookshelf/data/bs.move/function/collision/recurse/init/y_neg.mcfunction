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

execute store result entity B5-0-0-0-1 Pos[1] double .001 run scoreboard players operation #move.y1 bs.data += #move.sh bs.data
execute as B5-0-0-0-1 at @s run tp @s ~ ~-.000000001 ~
execute store result score #move.y1 bs.data run data get entity B5-0-0-0-1 Pos[1]
scoreboard players operation #move.y1 bs.data *= 1000 bs.const
scoreboard players operation #move.y1 bs.data -= #move.y bs.data
scoreboard players remove #move.y2 bs.data 1000
