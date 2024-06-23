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

tp @s ~ ~ ~ ~ ~
execute store result score #view.can_see_ata.x1 bs.data run data get entity @s Pos[0] 1000
execute store result score #view.can_see_ata.y1 bs.data run data get entity @s Pos[1] 1000
execute store result score #view.can_see_ata.z1 bs.data run data get entity @s Pos[2] 1000
execute in minecraft:overworld run tp @s -30000000 0 1600
