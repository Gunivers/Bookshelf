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

execute store result entity @s Pos[0] double 0.001 store result storage bs:ctx x int 1 run scoreboard players get $vector.cartesian_to_spherical.0 bs.in
execute store result entity @s Pos[1] double 0.001 store result storage bs:ctx y int 1 run scoreboard players get $vector.cartesian_to_spherical.1 bs.in
execute store result entity @s Pos[2] double 0.001 store result storage bs:ctx z int 1 run scoreboard players get $vector.cartesian_to_spherical.2 bs.in
execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet run tp @s -30000000 0 1600 ~ ~
