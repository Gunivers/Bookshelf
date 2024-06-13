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

# snow group
execute if block ~ ~ ~ minecraft:snow[layers=1] run data modify storage bs:out hitbox.shape set value [0, 0, 0, 16, 2, 16]
execute if block ~ ~ ~ minecraft:snow[layers=2] run data modify storage bs:out hitbox.shape set value [0, 0, 0, 16, 4, 16]
execute if block ~ ~ ~ minecraft:snow[layers=3] run data modify storage bs:out hitbox.shape set value [0, 0, 0, 16, 6, 16]
execute if block ~ ~ ~ minecraft:snow[layers=4] run data modify storage bs:out hitbox.shape set value [0, 0, 0, 16, 8, 16]
execute if block ~ ~ ~ minecraft:snow[layers=5] run data modify storage bs:out hitbox.shape set value [0, 0, 0, 16, 10, 16]
execute if block ~ ~ ~ minecraft:snow[layers=6] run data modify storage bs:out hitbox.shape set value [0, 0, 0, 16, 12, 16]
execute if block ~ ~ ~ minecraft:snow[layers=7] run data modify storage bs:out hitbox.shape set value [0, 0, 0, 16, 14, 16]
