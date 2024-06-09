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

execute if score #block.i bs.data matches 0 run return run function bs.block:process/fill_type/recurse/queue

function bs.block:get/get_block
function #bs.block:replace_type with storage bs:data block.process
data modify storage bs:data block.process.block set from storage bs:out block.block
$execute $(mask)run function bs.block:set/run with storage bs:data block.process

scoreboard players remove #block.i bs.data 1
scoreboard players add #block.z bs.data 1
execute if score #block.z bs.data > #block.max_z bs.data run scoreboard players add #block.y bs.data 1
execute if score #block.z bs.data > #block.max_z bs.data run scoreboard players operation #block.z bs.data = #block.min_z bs.data
execute if score #block.y bs.data > #block.max_y bs.data run scoreboard players add #block.x bs.data 1
execute if score #block.y bs.data > #block.max_y bs.data run scoreboard players operation #block.y bs.data = #block.min_y bs.data

execute if score #block.z bs.data > #block.min_z bs.data positioned ~ ~ ~1 run return run function bs.block:process/fill_type/recurse/next with storage bs:data block.process
$execute if score #block.y bs.data > #block.min_y bs.data positioned ~ ~1 $(min_z) run return run function bs.block:process/fill_type/recurse/next with storage bs:data block.process
$execute if score #block.x bs.data <= #block.max_x bs.data positioned ~1 $(min_y) $(min_z) run return run function bs.block:process/fill_type/recurse/next with storage bs:data block.process
