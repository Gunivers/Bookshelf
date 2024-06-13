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

# anvil group
execute if block ~ ~ ~ #bs.hitbox:shape/anvil[facing=west] run data modify storage bs:out hitbox.shape set value [[2, 0, 2, 14, 4, 14],[3, 4, 4, 13, 5, 12],[4, 5, 6, 12, 10, 10],[0, 10, 3, 16, 16, 13]]
execute if block ~ ~ ~ #bs.hitbox:shape/anvil[facing=east] run data modify storage bs:out hitbox.shape set value [[2, 0, 2, 14, 4, 14],[3, 4, 4, 13, 5, 12],[4, 5, 6, 12, 10, 10],[0, 10, 3, 16, 16, 13]]
execute if block ~ ~ ~ #bs.hitbox:shape/anvil[facing=north] run data modify storage bs:out hitbox.shape set value [[2, 0, 2, 14, 4, 14],[4, 4, 3, 12, 5, 13],[6, 5, 4, 10, 10, 12],[3, 10, 0, 13, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/anvil[facing=south] run data modify storage bs:out hitbox.shape set value [[2, 0, 2, 14, 4, 14],[4, 4, 3, 12, 5, 13],[6, 5, 4, 10, 10, 12],[3, 10, 0, 13, 16, 16]]
