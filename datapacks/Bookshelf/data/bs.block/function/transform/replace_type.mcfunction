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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#manage-type
# ------------------------------------------------------------------------------------------------------------

data modify storage bs:ctx _ set from storage bs:out block

$execute store success score #success bs.data store result storage bs:ctx y int 1 run data get storage bs:const block.types."$(type)"
execute if score #success bs.data matches 1 run function bs.block:get/lookup with storage bs:ctx
execute store success score #success bs.data run data modify storage bs:ctx _.group set from storage bs:out block.group
execute if score #success bs.data matches 0 run data modify storage bs:out block.nbt set from storage bs:ctx _.nbt
execute if score #success bs.data matches 0 run data modify storage bs:out block._ set from storage bs:ctx _._
