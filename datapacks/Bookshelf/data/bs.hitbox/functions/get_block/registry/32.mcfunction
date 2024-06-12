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

# fence_gate group
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=west,in_wall=false] run data modify storage bs:out hitbox.shape set value [[6, 0, 0, 10, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=east,in_wall=false] run data modify storage bs:out hitbox.shape set value [[6, 0, 0, 10, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=north,in_wall=false] run data modify storage bs:out hitbox.shape set value [[0, 0, 6, 16, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=south,in_wall=false] run data modify storage bs:out hitbox.shape set value [[0, 0, 6, 16, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=west,in_wall=true] run data modify storage bs:out hitbox.shape set value [[6, 0, 0, 10, 13, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=east,in_wall=true] run data modify storage bs:out hitbox.shape set value [[6, 0, 0, 10, 13, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=north,in_wall=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 6, 16, 13, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=south,in_wall=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 6, 16, 13, 10]]
