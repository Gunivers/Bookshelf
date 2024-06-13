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

# chest group
data modify storage bs:out hitbox.shape set value [[1, 0, 1, 15, 14, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/chest[facing=west,type=left] run data modify storage bs:out hitbox.shape set value [[1, 0, 0, 15, 14, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/chest[facing=east,type=left] run data modify storage bs:out hitbox.shape set value [[1, 0, 1, 15, 14, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/chest[facing=north,type=left] run data modify storage bs:out hitbox.shape set value [[1, 0, 1, 16, 14, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/chest[facing=south,type=left] run data modify storage bs:out hitbox.shape set value [[0, 0, 1, 15, 14, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/chest[facing=west,type=right] run data modify storage bs:out hitbox.shape set value [[1, 0, 1, 15, 14, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/chest[facing=east,type=right] run data modify storage bs:out hitbox.shape set value [[1, 0, 0, 15, 14, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/chest[facing=north,type=right] run data modify storage bs:out hitbox.shape set value [[0, 0, 1, 15, 14, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/chest[facing=south,type=right] run data modify storage bs:out hitbox.shape set value [[1, 0, 1, 16, 14, 15]]
