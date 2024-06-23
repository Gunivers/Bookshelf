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

# chain group
execute if block ~ ~ ~ minecraft:chain[axis=x] run data modify storage bs:out hitbox.shape set value [[0.0, 6.5, 6.5, 16.0, 9.5, 9.5]]
execute if block ~ ~ ~ minecraft:chain[axis=y] run data modify storage bs:out hitbox.shape set value [[6.5, 0.0, 6.5, 9.5, 16.0, 9.5]]
execute if block ~ ~ ~ minecraft:chain[axis=z] run data modify storage bs:out hitbox.shape set value [[6.5, 6.5, 0.0, 9.5, 9.5, 16.0]]
