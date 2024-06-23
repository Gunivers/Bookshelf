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

# sea_pickle group
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=1] run data modify storage bs:out hitbox.shape set value [6, 0, 6, 10, 6, 10]
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=2] run data modify storage bs:out hitbox.shape set value [3, 0, 3, 13, 6, 13]
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=3] run data modify storage bs:out hitbox.shape set value [2, 0, 2, 14, 6, 14]
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=4] run data modify storage bs:out hitbox.shape set value [2, 0, 2, 14, 7, 14]
