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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/color.html#convert-to-int
# ------------------------------------------------------------------------------------------------------------

$data modify storage bs:ctx _ set value $(color)

execute store result score #color.rgb_to_int.r bs.data run data get storage bs:ctx _[0]
execute store result score #color.rgb_to_int.g bs.data run data get storage bs:ctx _[1]
execute store result score #color.rgb_to_int.b bs.data run data get storage bs:ctx _[2]

scoreboard players operation $color.rgb_to_int bs.out = #color.rgb_to_int.r bs.data
scoreboard players operation $color.rgb_to_int bs.out *= 65536 bs.const
scoreboard players operation #color.rgb_to_int bs.data = #color.rgb_to_int.g bs.data
scoreboard players operation #color.rgb_to_int bs.data *= 256 bs.const
scoreboard players operation $color.rgb_to_int bs.out += #color.rgb_to_int bs.data
return run execute store result storage bs:out color.rgb_to_int int 1 run scoreboard players operation $color.rgb_to_int bs.out += #color.rgb_to_int.b bs.data
