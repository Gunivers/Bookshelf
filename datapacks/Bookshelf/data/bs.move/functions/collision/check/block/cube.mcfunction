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

# get cube hitbox coordinates
execute store result score #move.max_x bs.data run scoreboard players operation #move.min_x bs.data = #move.rx bs.data
execute store result score #move.max_y bs.data run scoreboard players operation #move.min_y bs.data = #move.ry bs.data
execute store result score #move.max_z bs.data run scoreboard players operation #move.min_z bs.data = #move.rz bs.data
scoreboard players add #move.max_x bs.data 1000000
scoreboard players add #move.max_y bs.data 1000000
scoreboard players add #move.max_z bs.data 1000000

# add the moving entity size to the hitbox
scoreboard players operation #move.min_x bs.data -= #move.w bs.data
scoreboard players operation #move.min_y bs.data -= #move.h bs.data
scoreboard players operation #move.min_z bs.data -= #move.w bs.data
scoreboard players operation #move.max_x bs.data += #move.w bs.data
scoreboard players operation #move.max_z bs.data += #move.w bs.data

# when step is negative, points are negative so we get the absolute value
scoreboard players operation #move.min_x bs.data /= #move.vx bs.data
scoreboard players operation #move.max_x bs.data /= #move.vx bs.data
scoreboard players operation #move.min_y bs.data /= #move.vy bs.data
scoreboard players operation #move.max_y bs.data /= #move.vy bs.data
scoreboard players operation #move.min_z bs.data /= #move.vz bs.data
scoreboard players operation #move.max_z bs.data /= #move.vz bs.data

# when step is negative we need to reverse near and far points
execute if score #move.vx bs.data matches ..-1 run scoreboard players operation #move.min_x bs.data >< #move.max_x bs.data
execute if score #move.vy bs.data matches ..-1 run scoreboard players operation #move.min_y bs.data >< #move.max_y bs.data
execute if score #move.vz bs.data matches ..-1 run scoreboard players operation #move.min_z bs.data >< #move.max_z bs.data

# compute near and far points for AABB collision
scoreboard players operation #move.min_x bs.data > #move.min_y bs.data
scoreboard players operation #move.min_x bs.data > #move.min_z bs.data
scoreboard players operation #move.max_x bs.data < #move.max_y bs.data
scoreboard players operation #move.max_x bs.data < #move.max_z bs.data

# if min_x <= max_x, ray is intersecting with AABB, if max_x < 0, ray is intersecting AABB, but the whole AABB is behind
execute if score #move.max_x bs.data matches 0.. \
  if score #move.min_x bs.data <= #move.max_x bs.data \
  if score #move.ctime bs.data > #move.min_x bs.data \
  run function bs.move:collision/collide
