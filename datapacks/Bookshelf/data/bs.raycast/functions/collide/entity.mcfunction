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

# stop the recursion then get the travelled distance
scoreboard players set #raycast.limit bs.data -2147483648
scoreboard players operation #raycast.distance bs.data = #raycast.tmin bs.data

# get the normal of the surface that was hit
execute if score #raycast.distance bs.data = #raycast.min_x bs.data if score #raycast.ux bs.data matches 0.. run data modify storage bs:out raycast.hit_normal set value [-1,0,0]
execute if score #raycast.distance bs.data = #raycast.min_y bs.data if score #raycast.uy bs.data matches 0.. run data modify storage bs:out raycast.hit_normal set value [0,-1,0]
execute if score #raycast.distance bs.data = #raycast.min_z bs.data if score #raycast.uz bs.data matches 0.. run data modify storage bs:out raycast.hit_normal set value [0,0,-1]
execute if score #raycast.distance bs.data = #raycast.min_x bs.data if score #raycast.ux bs.data matches ..-1 run data modify storage bs:out raycast.hit_normal set value [1,0,0]
execute if score #raycast.distance bs.data = #raycast.min_y bs.data if score #raycast.uy bs.data matches ..-1 run data modify storage bs:out raycast.hit_normal set value [0,1,0]
execute if score #raycast.distance bs.data = #raycast.min_z bs.data if score #raycast.uz bs.data matches ..-1 run data modify storage bs:out raycast.hit_normal set value [0,0,1]

# if the ray hit an entity store its UUID
data modify storage bs:out raycast.targeted_entity set from entity @s UUID
