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

# lectern group
execute if block ~ ~ ~ minecraft:lectern[facing=west] run data modify storage bs:out hitbox.shape set value [[1.0, 10.0, 0.0, 5.333333, 14.0, 16.0],[5.333333, 12.0, 0.0, 9.666667, 16.0, 16.0],[9.666667, 14.0, 0.0, 14.0, 18.0, 16.0],[0, 0, 0, 16, 2, 16],[4, 2, 4, 12, 14, 12]]
execute if block ~ ~ ~ minecraft:lectern[facing=east] run data modify storage bs:out hitbox.shape set value [[10.666667, 10.0, 0.0, 15.0, 14.0, 16.0],[6.333333, 12.0, 0.0, 10.666667, 16.0, 16.0],[2.0, 14.0, 0.0, 6.333333, 18.0, 16.0],[0, 0, 0, 16, 2, 16],[4, 2, 4, 12, 14, 12]]
execute if block ~ ~ ~ minecraft:lectern[facing=north] run data modify storage bs:out hitbox.shape set value [[0.0, 10.0, 1.0, 16.0, 14.0, 5.333333],[0.0, 12.0, 5.333333, 16.0, 16.0, 9.666667],[0.0, 14.0, 9.666667, 16.0, 18.0, 14.0],[0, 0, 0, 16, 2, 16],[4, 2, 4, 12, 14, 12]]
execute if block ~ ~ ~ minecraft:lectern[facing=south] run data modify storage bs:out hitbox.shape set value [[0.0, 10.0, 10.666667, 16.0, 14.0, 15.0],[0.0, 12.0, 6.333333, 16.0, 16.0, 10.666667],[0.0, 14.0, 2.0, 16.0, 18.0, 6.333333],[0, 0, 0, 16, 2, 16],[4, 2, 4, 12, 14, 12]]
