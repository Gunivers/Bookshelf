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

# amethyst_cluster group
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=up] run data modify storage bs:out hitbox.shape set value [[3, 0, 3, 13, 7, 13]]
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=down] run data modify storage bs:out hitbox.shape set value [[3, 9, 3, 13, 16, 13]]
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=west] run data modify storage bs:out hitbox.shape set value [[9, 3, 3, 16, 13, 13]]
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=east] run data modify storage bs:out hitbox.shape set value [[0, 3, 3, 7, 13, 13]]
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=north] run data modify storage bs:out hitbox.shape set value [[3, 3, 9, 13, 13, 16]]
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=south] run data modify storage bs:out hitbox.shape set value [[3, 3, 0, 13, 13, 7]]
