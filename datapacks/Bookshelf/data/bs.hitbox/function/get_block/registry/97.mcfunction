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

# redstone_wire group
data modify storage bs:out hitbox.shape set value []
execute if block ~ ~ ~ minecraft:redstone_wire[west=side] run data modify storage bs:out hitbox.shape append value [0, 0, 3, 13, 1, 13]
execute if block ~ ~ ~ minecraft:redstone_wire[east=side] run data modify storage bs:out hitbox.shape append value [3, 0, 3, 16, 1, 13]
execute if block ~ ~ ~ minecraft:redstone_wire[north=side] run data modify storage bs:out hitbox.shape append value [3, 0, 0, 13, 1, 13]
execute if block ~ ~ ~ minecraft:redstone_wire[south=side] run data modify storage bs:out hitbox.shape append value [3, 0, 3, 13, 1, 16]
execute if block ~ ~ ~ minecraft:redstone_wire[west=up] run data modify storage bs:out hitbox.shape append value [0, 0, 3, 13, 1, 13]
execute if block ~ ~ ~ minecraft:redstone_wire[east=up] run data modify storage bs:out hitbox.shape append value [3, 0, 3, 16, 1, 13]
execute if block ~ ~ ~ minecraft:redstone_wire[north=up] run data modify storage bs:out hitbox.shape append value [3, 0, 0, 13, 1, 13]
execute if block ~ ~ ~ minecraft:redstone_wire[south=up] run data modify storage bs:out hitbox.shape append value [3, 0, 3, 13, 1, 16]
execute if block ~ ~ ~ minecraft:redstone_wire[west=up] run data modify storage bs:out hitbox.shape append value [0, 0, 3, 1, 16, 13]
execute if block ~ ~ ~ minecraft:redstone_wire[east=up] run data modify storage bs:out hitbox.shape append value [15, 0, 3, 16, 16, 13]
execute if block ~ ~ ~ minecraft:redstone_wire[north=up] run data modify storage bs:out hitbox.shape append value [3, 0, 0, 13, 16, 1]
execute if block ~ ~ ~ minecraft:redstone_wire[south=up] run data modify storage bs:out hitbox.shape append value [3, 0, 15, 13, 16, 16]
