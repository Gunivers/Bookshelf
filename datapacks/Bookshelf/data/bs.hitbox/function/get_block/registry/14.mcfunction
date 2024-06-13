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

# cake group
execute if block ~ ~ ~ #bs.hitbox:shape/candle_cake run data modify storage bs:out hitbox.shape set value [[1, 0, 1, 15, 8, 15],[7, 8, 7, 9, 14, 9]]
execute if block ~ ~ ~ minecraft:cake[bites=0] run data modify storage bs:out hitbox.shape set value [[1, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=1] run data modify storage bs:out hitbox.shape set value [[3, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=2] run data modify storage bs:out hitbox.shape set value [[5, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=3] run data modify storage bs:out hitbox.shape set value [[7, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=4] run data modify storage bs:out hitbox.shape set value [[9, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=5] run data modify storage bs:out hitbox.shape set value [[11, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=6] run data modify storage bs:out hitbox.shape set value [[13, 0, 1, 15, 8, 15]]
