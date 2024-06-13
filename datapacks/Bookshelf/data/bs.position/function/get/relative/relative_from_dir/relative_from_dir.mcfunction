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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#get-relative
# ------------------------------------------------------------------------------------------------------------

execute as B5-0-0-0-1 run function bs.position:get/relative/relative_from_dir/ctx
$execute store result score @s bs.pos.x run data get storage bs:ctx _[0] $(scale)
$execute store result score @s bs.pos.y run data get storage bs:ctx _[1] $(scale)
$execute store result score @s bs.pos.z run data get storage bs:ctx _[2] $(scale)
