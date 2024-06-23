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

# tripwire_hook group
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=west] run data modify storage bs:out hitbox.shape set value [[10, 0, 5, 16, 10, 11]]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=east] run data modify storage bs:out hitbox.shape set value [[0, 0, 5, 6, 10, 11]]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=north] run data modify storage bs:out hitbox.shape set value [[5, 0, 10, 11, 10, 16]]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=south] run data modify storage bs:out hitbox.shape set value [[5, 0, 0, 11, 10, 6]]
