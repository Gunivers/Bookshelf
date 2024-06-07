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

# hopper group
data modify storage bs:out hitbox.shape set value [[0, 10, 0, 16, 11, 16],[0, 11, 0, 2, 16, 16],[14, 11, 0, 16, 16, 16],[2, 11, 0, 14, 16, 2],[2, 11, 14, 14, 16, 16],[4, 4, 4, 12, 10, 12]]
execute if block ~ ~ ~ minecraft:hopper[facing=down] run data modify storage bs:out hitbox.shape append value [6, 0, 6, 10, 4, 10]
execute if block ~ ~ ~ minecraft:hopper[facing=west] run data modify storage bs:out hitbox.shape append value [0, 4, 6, 4, 8, 10]
execute if block ~ ~ ~ minecraft:hopper[facing=east] run data modify storage bs:out hitbox.shape append value [12, 4, 6, 16, 8, 10]
execute if block ~ ~ ~ minecraft:hopper[facing=north] run data modify storage bs:out hitbox.shape append value [6, 4, 0, 10, 8, 4]
execute if block ~ ~ ~ minecraft:hopper[facing=south] run data modify storage bs:out hitbox.shape append value [6, 4, 12, 10, 8, 16]
