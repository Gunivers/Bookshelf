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

# extended_piston group
execute if block ~ ~ ~ #bs.hitbox:shape/extended_piston[facing=west,extended=true] run data modify storage bs:out hitbox.shape set value [[4, 0, 0, 16, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/extended_piston[facing=east,extended=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 12, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/extended_piston[facing=north,extended=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 4, 16, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/extended_piston[facing=south,extended=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 16, 12]]
execute if block ~ ~ ~ #bs.hitbox:shape/extended_piston[facing=up,extended=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 12, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/extended_piston[facing=down,extended=true] run data modify storage bs:out hitbox.shape set value [[0, 4, 0, 16, 16, 16]]
