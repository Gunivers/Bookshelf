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

# stem group
execute if block ~ ~ ~ #bs.hitbox:shape/stem[age=0] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 2, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/stem[age=1] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 4, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/stem[age=2] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 6, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/stem[age=3] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 8, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/stem[age=4] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 10, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/stem[age=5] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 12, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/stem[age=6] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 14, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/stem[age=7] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 16, 9]]
