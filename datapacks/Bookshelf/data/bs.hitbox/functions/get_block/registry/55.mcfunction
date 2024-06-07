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

# pipe_shaped group
data modify storage bs:out hitbox.shape set value []
execute if block ~ ~ ~ #bs.hitbox:shape/pipe_shaped[up=true] run data modify storage bs:out hitbox.shape append value [3, 3, 3, 13, 16, 13]
execute if block ~ ~ ~ #bs.hitbox:shape/pipe_shaped[down=true] run data modify storage bs:out hitbox.shape append value [3, 0, 3, 13, 13, 13]
execute if block ~ ~ ~ #bs.hitbox:shape/pipe_shaped[west=true] run data modify storage bs:out hitbox.shape append value [0, 3, 3, 13, 13, 13]
execute if block ~ ~ ~ #bs.hitbox:shape/pipe_shaped[east=true] run data modify storage bs:out hitbox.shape append value [3, 3, 3, 16, 13, 13]
execute if block ~ ~ ~ #bs.hitbox:shape/pipe_shaped[north=true] run data modify storage bs:out hitbox.shape append value [3, 3, 0, 13, 13, 13]
execute if block ~ ~ ~ #bs.hitbox:shape/pipe_shaped[south=true] run data modify storage bs:out hitbox.shape append value [3, 3, 3, 13, 13, 16]
