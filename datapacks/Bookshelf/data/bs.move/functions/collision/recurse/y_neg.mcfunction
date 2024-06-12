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

scoreboard players operation #move.rz bs.data = #move.z1 bs.data
execute if score #move.vz bs.data matches 0.. run function bs.move:collision/recurse/z_pos with storage bs:data move
execute if score #move.vz bs.data matches ..-1 run function bs.move:collision/recurse/z_neg with storage bs:data move

scoreboard players remove #move.ry bs.data 1000000
execute if score #move.ry bs.data > #move.y2 bs.data positioned ~ ~-1 ~ run function bs.move:collision/recurse/y_neg
