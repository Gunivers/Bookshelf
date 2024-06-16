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

execute store result score #block.x bs.data run data get storage bs:data block.process.x
execute store result score #block.y bs.data run data get storage bs:data block.process.y
execute store result score #block.z bs.data run data get storage bs:data block.process.z
execute store result score #block.i bs.data run data get storage bs:data block.process.limit
execute store result score #block.min_x bs.data run data get storage bs:data block.process.min_x
execute store result score #block.min_y bs.data run data get storage bs:data block.process.min_y
execute store result score #block.min_z bs.data run data get storage bs:data block.process.min_z
execute store result score #block.max_x bs.data run data get storage bs:data block.process.max_x
execute store result score #block.max_y bs.data run data get storage bs:data block.process.max_y
execute store result score #block.max_z bs.data run data get storage bs:data block.process.max_z

function bs.block:process/fill/recurse/init with storage bs:data block.process
