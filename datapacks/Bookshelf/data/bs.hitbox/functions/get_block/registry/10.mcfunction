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

# big_dripleaf group
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=west] run data modify storage bs:out hitbox.shape set value [[9, 0, 5, 15, 13, 11]]
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=east] run data modify storage bs:out hitbox.shape set value [[1, 0, 5, 7, 13, 11]]
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=north] run data modify storage bs:out hitbox.shape set value [[5, 0, 9, 11, 13, 15]]
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=south] run data modify storage bs:out hitbox.shape set value [[5, 0, 1, 11, 13, 7]]
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=none] run data modify storage bs:out hitbox.shape append value [0, 11, 0, 16, 15, 16]
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run data modify storage bs:out hitbox.shape append value [0, 11, 0, 16, 13, 16]
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=unstable] run data modify storage bs:out hitbox.shape append value [0, 11, 0, 16, 15, 16]
