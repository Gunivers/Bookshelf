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

# pitcher_crop group
data modify storage bs:out hitbox.shape set value [[3, 0, 3, 13, 16, 13]]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=0,half=lower] run data modify storage bs:out hitbox.shape set value [[5, 0, 5, 11, 3, 11]]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=1,half=lower] run data modify storage bs:out hitbox.shape set value [[3, 0, 3, 13, 14, 13]]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=3,half=upper] run data modify storage bs:out hitbox.shape set value [[3, 0, 3, 13, 11, 13]]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=4,half=upper] run data modify storage bs:out hitbox.shape set value [[3, 0, 3, 13, 15, 13]]
