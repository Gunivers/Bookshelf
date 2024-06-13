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

data modify storage bs:ctx _ set from entity @s Pos
execute store result score #hitbox.min_x bs.data store result score #hitbox.max_x bs.data run data get storage bs:ctx _[0] 1000
execute store result score #hitbox.min_y bs.data store result score #hitbox.max_y bs.data run data get storage bs:ctx _[1] 1000
execute store result score #hitbox.min_z bs.data store result score #hitbox.max_z bs.data run data get storage bs:ctx _[2] 1000

execute store result score #hitbox.height bs.data run data get storage bs:out hitbox.height 1000
execute store result score #hitbox.hwidth bs.data run data get storage bs:out hitbox.width 500
execute store result score #hitbox.scale bs.data run data get storage bs:out hitbox.scale 1000
scoreboard players operation #hitbox.height bs.data *= #hitbox.scale bs.data
scoreboard players operation #hitbox.hwidth bs.data *= #hitbox.scale bs.data
scoreboard players operation #hitbox.height bs.data /= 1000 bs.const
scoreboard players operation #hitbox.hwidth bs.data /= 1000 bs.const

scoreboard players operation #hitbox.max_y bs.data += #hitbox.height bs.data
scoreboard players operation #hitbox.max_x bs.data += #hitbox.hwidth bs.data
scoreboard players operation #hitbox.max_z bs.data += #hitbox.hwidth bs.data
scoreboard players operation #hitbox.min_x bs.data -= #hitbox.hwidth bs.data
scoreboard players operation #hitbox.min_z bs.data -= #hitbox.hwidth bs.data

execute \
  if score #hitbox.x bs.data >= #hitbox.min_x bs.data \
  if score #hitbox.x bs.data < #hitbox.max_x bs.data \
  if score #hitbox.y bs.data >= #hitbox.min_y bs.data \
  if score #hitbox.y bs.data < #hitbox.max_y bs.data \
  if score #hitbox.z bs.data >= #hitbox.min_z bs.data \
  if score #hitbox.z bs.data < #hitbox.max_z bs.data \
run return 1
