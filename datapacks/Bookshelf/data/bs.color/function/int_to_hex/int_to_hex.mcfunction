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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/color.html#convert-to-hex
# ------------------------------------------------------------------------------------------------------------

$scoreboard players set #color.int_to_hex bs.data $(color)

scoreboard players operation #color.int_to_hex.r bs.data = #color.int_to_hex bs.data
scoreboard players operation #color.int_to_hex.r bs.data /= 65536 bs.const
scoreboard players operation #color.int_to_hex.g bs.data = #color.int_to_hex bs.data
scoreboard players operation #color.int_to_hex.g bs.data /= 256 bs.const
scoreboard players operation #color.int_to_hex.b bs.data = #color.int_to_hex bs.data

execute store result storage bs:ctx x int 1 run scoreboard players operation #color.int_to_hex.r bs.data %= 256 bs.const
execute store result storage bs:ctx y int 1 run scoreboard players operation #color.int_to_hex.g bs.data %= 256 bs.const
execute store result storage bs:ctx z int 1 run scoreboard players operation #color.int_to_hex.b bs.data %= 256 bs.const

function bs.color:int_to_hex/get_hexes with storage bs:ctx
function bs.color:int_to_hex/concat_hexes with storage bs:ctx _
