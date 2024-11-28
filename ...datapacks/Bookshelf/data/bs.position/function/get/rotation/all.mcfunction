# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/Bookshelf).
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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#get-rotation
# ------------------------------------------------------------------------------------------------------------

execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600 ~ ~
$execute store result score @s bs.rot.h run data get entity B5-0-0-0-1 Rotation[0] $(scale)
$execute store result score @s bs.rot.v run data get entity B5-0-0-0-1 Rotation[1] $(scale)
