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

execute store result score #hitbox.min_x bs.data run data get storage bs:out hitbox.shape[-1][0] 62.5
execute store result score #hitbox.min_y bs.data run data get storage bs:out hitbox.shape[-1][1] 62.5
execute store result score #hitbox.min_z bs.data run data get storage bs:out hitbox.shape[-1][2] 62.5
execute store result score #hitbox.max_x bs.data run data get storage bs:out hitbox.shape[-1][3] 62.5
execute store result score #hitbox.max_y bs.data run data get storage bs:out hitbox.shape[-1][4] 62.5
execute store result score #hitbox.max_z bs.data run data get storage bs:out hitbox.shape[-1][5] 62.5

# offset coordinates if needed
scoreboard players operation #hitbox.min_x bs.data += #hitbox.offset.x bs.data
scoreboard players operation #hitbox.max_x bs.data += #hitbox.offset.x bs.data
scoreboard players operation #hitbox.min_z bs.data += #hitbox.offset.z bs.data
scoreboard players operation #hitbox.max_z bs.data += #hitbox.offset.z bs.data

execute \
  if score #hitbox.x bs.data >= #hitbox.min_x bs.data \
  if score #hitbox.x bs.data < #hitbox.max_x bs.data \
  if score #hitbox.y bs.data >= #hitbox.min_y bs.data \
  if score #hitbox.y bs.data < #hitbox.max_y bs.data \
  if score #hitbox.z bs.data >= #hitbox.min_z bs.data \
  if score #hitbox.z bs.data < #hitbox.max_z bs.data \
run return 1

data remove storage bs:out hitbox.shape[-1]
execute if data storage bs:out hitbox.shape[0] run return run function bs.hitbox:is_in_block/check
