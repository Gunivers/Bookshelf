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

# ((k-n+1)(k-n+2)...(k-2)(k-1)k) / (1*2*3*...*(n-1)*n)
scoreboard players operation #math.combine.k bs.data -= #math.combine.n bs.data
scoreboard players set #math.combine.i bs.data 0
scoreboard players set $math.combine bs.out 1
function bs.math:combine/recurse/next
