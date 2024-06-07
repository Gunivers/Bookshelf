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

# wall group
data modify storage bs:out hitbox.shape set value []
execute if block ~ ~ ~ #bs.hitbox:shape/wall[up=true] run data modify storage bs:out hitbox.shape append value [4, 0, 4, 12, 16, 12]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[west=low] run data modify storage bs:out hitbox.shape append value [0, 0, 5, 8, 14, 11]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[east=low] run data modify storage bs:out hitbox.shape append value [8, 0, 5, 16, 14, 11]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[north=low] run data modify storage bs:out hitbox.shape append value [5, 0, 0, 11, 14, 8]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[south=low] run data modify storage bs:out hitbox.shape append value [5, 0, 8, 11, 14, 16]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[west=tall] run data modify storage bs:out hitbox.shape append value [0, 0, 5, 8, 16, 11]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[east=tall] run data modify storage bs:out hitbox.shape append value [8, 0, 5, 16, 16, 11]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[north=tall] run data modify storage bs:out hitbox.shape append value [5, 0, 0, 11, 16, 8]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[south=tall] run data modify storage bs:out hitbox.shape append value [5, 0, 8, 11, 16, 16]
