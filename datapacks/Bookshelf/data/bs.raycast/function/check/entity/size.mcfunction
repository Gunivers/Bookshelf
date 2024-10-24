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

# get the entity relative coordinates
execute in minecraft:overworld positioned as @s as B5-0-0-0-1 run function bs.raycast:compute/entity_rpos with storage bs:data raycast
execute store result score #raycast.min_x bs.data run data get storage bs:ctx _[0] 10000000
execute store result score #raycast.min_y bs.data run data get storage bs:ctx _[1] 10000000
execute store result score #raycast.min_z bs.data run data get storage bs:ctx _[2] 10000000
execute store result score #raycast.max_x bs.data run scoreboard players operation #raycast.min_x bs.data += #raycast.x bs.data
execute store result score #raycast.max_y bs.data run scoreboard players operation #raycast.min_y bs.data += #raycast.y bs.data
execute store result score #raycast.max_z bs.data run scoreboard players operation #raycast.min_z bs.data += #raycast.z bs.data

# compute hitbox coordinates (using width and height)
execute store result score #raycast.h bs.data run data get storage bs:out hitbox.height 10000
execute store result score #raycast.w bs.data run data get storage bs:out hitbox.width 5000
execute store result score #raycast.s bs.data run data get storage bs:out hitbox.scale 1000
scoreboard players operation #raycast.h bs.data *= #raycast.s bs.data
scoreboard players operation #raycast.w bs.data *= #raycast.s bs.data
scoreboard players operation #raycast.min_x bs.data -= #raycast.w bs.data
scoreboard players operation #raycast.min_z bs.data -= #raycast.w bs.data
scoreboard players operation #raycast.max_x bs.data += #raycast.w bs.data
scoreboard players operation #raycast.max_y bs.data += #raycast.h bs.data
scoreboard players operation #raycast.max_z bs.data += #raycast.w bs.data

# when step is negative, points are negative so we get the absolute value
scoreboard players operation #raycast.min_x bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.max_x bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.min_y bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.max_y bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.min_z bs.data /= #raycast.uz bs.data
scoreboard players operation #raycast.max_z bs.data /= #raycast.uz bs.data

# when step is negative we need to reverse near and far points
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players operation #raycast.min_x bs.data >< #raycast.max_x bs.data
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players operation #raycast.min_y bs.data >< #raycast.max_y bs.data
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players operation #raycast.min_z bs.data >< #raycast.max_z bs.data

# compute near and far points for AABB collision
scoreboard players operation #raycast.tmin bs.data = #raycast.min_x bs.data
scoreboard players operation #raycast.tmax bs.data = #raycast.max_x bs.data
scoreboard players operation #raycast.tmin bs.data > #raycast.min_y bs.data
scoreboard players operation #raycast.tmin bs.data > #raycast.min_z bs.data
scoreboard players operation #raycast.tmax bs.data < #raycast.max_y bs.data
scoreboard players operation #raycast.tmax bs.data < #raycast.max_z bs.data

# if tmin <= tmax, ray is intersecting with AABB, if tmax < 0, ray is intersecting AABB, but the whole AABB is behind
execute if score #raycast.tmax bs.data matches 0.. \
  if score #raycast.tmin bs.data <= #raycast.tmax bs.data \
  if score #raycast.tmin bs.data < #raycast.distance bs.data \
  if score #raycast.tmin bs.data <= #raycast.max_distance bs.data \
  run function bs.raycast:collide/size
