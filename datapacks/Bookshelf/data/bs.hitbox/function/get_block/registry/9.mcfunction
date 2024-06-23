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

# big_dripleaf_stem group
execute if block ~ ~ ~ minecraft:big_dripleaf_stem[facing=west] run data modify storage bs:out hitbox.shape set value [[9, 0, 5, 15, 16, 11]]
execute if block ~ ~ ~ minecraft:big_dripleaf_stem[facing=east] run data modify storage bs:out hitbox.shape set value [[1, 0, 5, 7, 16, 11]]
execute if block ~ ~ ~ minecraft:big_dripleaf_stem[facing=north] run data modify storage bs:out hitbox.shape set value [[5, 0, 9, 11, 16, 15]]
execute if block ~ ~ ~ minecraft:big_dripleaf_stem[facing=south] run data modify storage bs:out hitbox.shape set value [[5, 0, 1, 11, 16, 7]]
