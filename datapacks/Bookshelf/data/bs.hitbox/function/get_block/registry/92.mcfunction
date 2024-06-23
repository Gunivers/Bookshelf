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

# wall_hanging_sign group
execute if block ~ ~ ~ #bs.hitbox:shape/wall_hanging_sign[facing=west] run data modify storage bs:out hitbox.shape set value [[6, 14, 0, 10, 16, 16],[7, 0, 1, 9, 10, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_hanging_sign[facing=east] run data modify storage bs:out hitbox.shape set value [[6, 14, 0, 10, 16, 16],[7, 0, 1, 9, 10, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_hanging_sign[facing=north] run data modify storage bs:out hitbox.shape set value [[0, 14, 6, 16, 16, 10],[1, 0, 7, 15, 10, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_hanging_sign[facing=south] run data modify storage bs:out hitbox.shape set value [[0, 14, 6, 16, 16, 10],[1, 0, 7, 15, 10, 9]]
