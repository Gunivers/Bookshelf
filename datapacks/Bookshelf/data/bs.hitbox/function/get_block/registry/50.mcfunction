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

# nether_wart group
execute if block ~ ~ ~ minecraft:nether_wart[age=0] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 5, 16]]
execute if block ~ ~ ~ minecraft:nether_wart[age=1] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16]]
execute if block ~ ~ ~ minecraft:nether_wart[age=2] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 11, 16]]
execute if block ~ ~ ~ minecraft:nether_wart[age=3] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 14, 16]]
