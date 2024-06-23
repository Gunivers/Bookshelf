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

# bed group
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=west,part=head] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[0, 0, 13, 3, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=west,part=foot] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[13, 0, 0, 16, 3, 3],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=east,part=head] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[13, 0, 0, 16, 3, 3],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=east,part=foot] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[0, 0, 13, 3, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=north,part=head] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[13, 0, 0, 16, 3, 3]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=north,part=foot] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 13, 3, 3, 16],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=south,part=head] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 13, 3, 3, 16],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=south,part=foot] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[13, 0, 0, 16, 3, 3]]
