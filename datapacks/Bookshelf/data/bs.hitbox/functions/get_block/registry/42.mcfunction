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

# large_amethyst_bud group
execute if block ~ ~ ~ minecraft:large_amethyst_bud[facing=up] run data modify storage bs:out hitbox.shape set value [[3, 0, 3, 13, 5, 13]]
execute if block ~ ~ ~ minecraft:large_amethyst_bud[facing=down] run data modify storage bs:out hitbox.shape set value [[3, 11, 3, 13, 16, 13]]
execute if block ~ ~ ~ minecraft:large_amethyst_bud[facing=west] run data modify storage bs:out hitbox.shape set value [[11, 3, 3, 16, 13, 13]]
execute if block ~ ~ ~ minecraft:large_amethyst_bud[facing=east] run data modify storage bs:out hitbox.shape set value [[0, 3, 3, 5, 13, 13]]
execute if block ~ ~ ~ minecraft:large_amethyst_bud[facing=north] run data modify storage bs:out hitbox.shape set value [[3, 3, 11, 13, 13, 16]]
execute if block ~ ~ ~ minecraft:large_amethyst_bud[facing=south] run data modify storage bs:out hitbox.shape set value [[3, 3, 0, 13, 13, 5]]
