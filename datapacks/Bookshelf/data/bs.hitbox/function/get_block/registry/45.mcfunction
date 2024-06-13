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

# mangrove_propagule group
execute as B5-0-0-0-1 run function bs.hitbox:get_block/offset/get
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=false] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=0] run data modify storage bs:out hitbox.shape set value [[7, 13, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=1] run data modify storage bs:out hitbox.shape set value [[7, 10, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=2] run data modify storage bs:out hitbox.shape set value [[7, 7, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=3] run data modify storage bs:out hitbox.shape set value [[7, 3, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=4] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 16, 9]]
