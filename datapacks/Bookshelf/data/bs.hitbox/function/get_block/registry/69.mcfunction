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

# small_amethyst_bud group
execute if block ~ ~ ~ minecraft:small_amethyst_bud[facing=down] run data modify storage bs:out hitbox.shape set value [[4, 13, 4, 12, 16, 12]]
execute if block ~ ~ ~ minecraft:small_amethyst_bud[facing=west] run data modify storage bs:out hitbox.shape set value [[13, 4, 4, 16, 12, 12]]
execute if block ~ ~ ~ minecraft:small_amethyst_bud[facing=east] run data modify storage bs:out hitbox.shape set value [[0, 4, 4, 3, 12, 12]]
execute if block ~ ~ ~ minecraft:small_amethyst_bud[facing=north] run data modify storage bs:out hitbox.shape set value [[4, 4, 13, 12, 12, 16]]
execute if block ~ ~ ~ minecraft:small_amethyst_bud[facing=south] run data modify storage bs:out hitbox.shape set value [[4, 4, 0, 12, 12, 3]]
