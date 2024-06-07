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

# wall_banner group
execute if block ~ ~ ~ #bs.hitbox:shape/wall_banner[facing=west] run data modify storage bs:out hitbox.shape set value [[14.0, 0.0, 0.0, 16.0, 12.5, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_banner[facing=east] run data modify storage bs:out hitbox.shape set value [[0.0, 0.0, 0.0, 2.0, 12.5, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_banner[facing=north] run data modify storage bs:out hitbox.shape set value [[0.0, 0.0, 14.0, 16.0, 12.5, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_banner[facing=south] run data modify storage bs:out hitbox.shape set value [[0.0, 0.0, 0.0, 16.0, 12.5, 2.0]]
