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

scoreboard players set #block.shift_properties.by bs.data 1
execute if data storage bs:ctx _.i[-1].by store result score #block.shift_properties.by bs.data run data get storage bs:ctx _.i[-1].by

scoreboard players set #block.shift_properties.i bs.data 0
$execute store success score #success bs.data run data modify storage bs:ctx _.i[-1].v set from storage bs:out block.properties."$(name)"
execute if score #success bs.data matches 1 \
  store result score #block.shift_properties.i bs.data \
  run function bs.block:transform/shift_properties/recurse/index with storage bs:ctx _.i[-1]

scoreboard players operation #block.shift_properties.i bs.data += #block.shift_properties.by bs.data
execute store result storage bs:ctx _.i[-1].i short 1 run scoreboard players operation #block.shift_properties.i bs.data %= #block.shift_properties bs.data
function bs.block:transform/shift_properties/recurse/update_property with storage bs:ctx _.i[-1]
