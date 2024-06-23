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

# trapdoor group
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[facing=west,open=true] run data modify storage bs:out hitbox.shape set value [[13, 0, 0, 16, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[facing=east,open=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 3, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[facing=north,open=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 13, 16, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[facing=south,open=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 16, 3]]
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[half=bottom,open=false] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[half=top,open=false] run data modify storage bs:out hitbox.shape set value [[0, 13, 0, 16, 16, 16]]
