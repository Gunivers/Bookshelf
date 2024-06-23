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

data remove storage bs:data block.process.block
$loot replace block -30000000 0 1606 container.0 loot $(entries)
data modify storage bs:data block.process merge from block -30000000 0 1606 item.components."minecraft:custom_data"

execute if data storage bs:data block.process.block run return run function bs.block:process/run/set_block with storage bs:data block.process

function bs.block:get/get_block
function #bs.block:replace_type with storage bs:data block.process
data modify storage bs:data block.process.block set from storage bs:out block.block
function bs.block:process/run/set_block with storage bs:data block.process
