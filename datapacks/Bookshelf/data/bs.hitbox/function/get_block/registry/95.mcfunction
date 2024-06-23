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

# wall_torch group
execute if block ~ ~ ~ #bs.hitbox:shape/wall_torch[facing=west] run data modify storage bs:out hitbox.shape set value [[11.0, 3.0, 5.5, 16.0, 13.0, 10.5]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_torch[facing=east] run data modify storage bs:out hitbox.shape set value [[0.0, 3.0, 5.5, 5.0, 13.0, 10.5]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_torch[facing=north] run data modify storage bs:out hitbox.shape set value [[5.5, 3.0, 11.0, 10.5, 13.0, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_torch[facing=south] run data modify storage bs:out hitbox.shape set value [[5.5, 3.0, 0.0, 10.5, 13.0, 5.0]]
