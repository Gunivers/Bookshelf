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

execute positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^10.0
execute store result score #position.convert.cos.h bs.data run data get entity @s Pos[2] 100
execute store result score #position.convert.sin.h bs.data run data get entity @s Pos[0] -100
execute positioned 0.0 0.0 0.0 rotated 0.0 ~ run tp @s ^ ^ ^10.0
execute store result score #position.convert.cos.v bs.data run data get entity @s Pos[2] 100
execute store result score #position.convert.sin.v bs.data run data get entity @s Pos[1] -100
execute in minecraft:overworld run tp @s -30000000 0 1600
