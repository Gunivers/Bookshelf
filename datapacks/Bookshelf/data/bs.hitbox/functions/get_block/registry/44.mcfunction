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

# lever group
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=west] run data modify storage bs:out hitbox.shape set value [[4, 0, 5, 12, 6, 11]]
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=east] run data modify storage bs:out hitbox.shape set value [[4, 0, 5, 12, 6, 11]]
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=north] run data modify storage bs:out hitbox.shape set value [[5, 0, 4, 11, 6, 12]]
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=south] run data modify storage bs:out hitbox.shape set value [[5, 0, 4, 11, 6, 12]]
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=west] run data modify storage bs:out hitbox.shape set value [[4, 10, 5, 12, 16, 11]]
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=east] run data modify storage bs:out hitbox.shape set value [[4, 10, 5, 12, 16, 11]]
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=north] run data modify storage bs:out hitbox.shape set value [[5, 10, 4, 11, 16, 12]]
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=south] run data modify storage bs:out hitbox.shape set value [[5, 10, 4, 11, 16, 12]]
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=west] run data modify storage bs:out hitbox.shape set value [[10, 4, 5, 16, 12, 11]]
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=east] run data modify storage bs:out hitbox.shape set value [[0, 4, 5, 6, 12, 11]]
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=north] run data modify storage bs:out hitbox.shape set value [[5, 4, 10, 11, 12, 16]]
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=south] run data modify storage bs:out hitbox.shape set value [[5, 4, 0, 11, 12, 6]]
