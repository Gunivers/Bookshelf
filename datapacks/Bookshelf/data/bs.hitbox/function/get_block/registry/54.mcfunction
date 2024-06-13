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

# pink_petals group
data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 3, 16]]
execute if block ~ ~ ~ minecraft:pink_petals[facing=west,flower_amount=1] run data modify storage bs:out hitbox.shape set value [[0, 0, 8, 8, 3, 16]]
execute if block ~ ~ ~ minecraft:pink_petals[facing=east,flower_amount=1] run data modify storage bs:out hitbox.shape set value [[8, 0, 0, 16, 3, 8]]
execute if block ~ ~ ~ minecraft:pink_petals[facing=north,flower_amount=1] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 8, 3, 8]]
execute if block ~ ~ ~ minecraft:pink_petals[facing=south,flower_amount=1] run data modify storage bs:out hitbox.shape set value [[8, 0, 8, 16, 3, 16]]
execute if block ~ ~ ~ minecraft:pink_petals[facing=west,flower_amount=2] run data modify storage bs:out hitbox.shape set value [[0, 0, 8, 16, 3, 16]]
execute if block ~ ~ ~ minecraft:pink_petals[facing=east,flower_amount=2] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 3, 8]]
execute if block ~ ~ ~ minecraft:pink_petals[facing=north,flower_amount=2] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 8, 3, 16]]
execute if block ~ ~ ~ minecraft:pink_petals[facing=south,flower_amount=2] run data modify storage bs:out hitbox.shape set value [[8, 0, 0, 16, 3, 16]]
