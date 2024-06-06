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

$execute store result storage bs:ctx x int 1 store success score #success bs.data run data get storage bs:ctx _[{type:"$(type)"}].id
execute if score #success bs.data matches 0 run return fail
execute store result storage bs:ctx y int 1 store success score #success bs.data run function bs.block:transform/replace_mapped_type/find_set with storage bs:out block
execute if score #success bs.data matches 0 run return fail
function bs.block:transform/replace_mapped_type/replace_intersect with storage bs:ctx
return run function bs.block:get/compile/block
