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

# tall_crop group
execute if block ~ ~ ~ #bs.hitbox:shape/tall_crop[age=0] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 2, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/tall_crop[age=1] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 4, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/tall_crop[age=2] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 6, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/tall_crop[age=3] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16]]
