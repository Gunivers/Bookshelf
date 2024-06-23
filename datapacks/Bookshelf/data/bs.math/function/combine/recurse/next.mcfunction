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

# math magic
scoreboard players add #math.combine.k bs.data 1
scoreboard players add #math.combine.i bs.data 1

scoreboard players set #math.combine.max_out_nonoverflow bs.data 2147483647
scoreboard players operation #math.combine.max_out_nonoverflow bs.data /= #math.combine.k bs.data
execute store result score #math.combine.flag bs.data if score $math.combine bs.out <= #math.combine.max_out_nonoverflow bs.data
execute if score #math.combine.flag bs.data matches 1 run scoreboard players operation $math.combine bs.out *= #math.combine.k bs.data
execute if score #math.combine.flag bs.data matches 1 run scoreboard players operation $math.combine bs.out /= #math.combine.i bs.data
execute if score #math.combine.flag bs.data matches 0 run function bs.math:combine/recurse/overflow

execute if score #math.combine.i bs.data < #math.combine.n bs.data run function bs.math:combine/recurse/next
