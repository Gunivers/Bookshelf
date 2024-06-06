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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#manage-state
# ------------------------------------------------------------------------------------------------------------

$data modify storage bs:ctx _ set value {in:$(properties)}
data modify storage bs:ctx _.out set from storage bs:out block._

# reset selected property values and attempt to reselect them based on the current location
data remove storage bs:out block._[].o[].c
execute store result storage bs:ctx y int 1 store result score #block.group bs.data run data get storage bs:out block.group
execute unless score #block.group bs.data matches 0 run function bs.block:get/dispatch with storage bs:ctx

# update old properties with new ones if listed for merging
function bs.block:transform/merge_properties/loop with storage bs:ctx _.in[-1]
data modify storage bs:out block._ set from storage bs:ctx _.out
