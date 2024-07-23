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

# copy _ options to ctx if the property name is valid
$execute store success score #success bs.data run data modify storage bs:ctx _[-1].o set from storage bs:out block._[{n:"$(name)"}].o

# compute the new index after shifting by the desired value
execute store result score #block.shift_properties bs.data run data get storage bs:ctx _[-1].o[{c:1b}].i
execute store result score #block.shift_properties.len bs.data if data storage bs:ctx _[-1].o[]
execute store result score #block.shift_properties.by bs.data run data get storage bs:ctx _[-1].by
execute if score #block.shift_properties.by bs.data matches 0 run scoreboard players set #block.shift_properties.by bs.data 1
scoreboard players operation #block.shift_properties bs.data += #block.shift_properties.by bs.data
execute store result storage bs:ctx y short 1 run scoreboard players operation #block.shift_properties bs.data %= #block.shift_properties.len bs.data

# select the _ option at the specified index then copy ctx back to _ options
execute if score #success bs.data matches 1 run function bs.block:transform/shift_properties/select with storage bs:ctx
$execute if score #success bs.data matches 1 run data modify storage bs:out block._[{n:"$(name)"}].o set from storage bs:ctx _[-1].o

data remove storage bs:ctx _[-1]
function bs.block:transform/shift_properties/loop with storage bs:ctx _[-1]
