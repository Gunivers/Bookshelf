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
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/biome.html#get-biome
# ------------------------------------------------------------------------------------------------------------

scoreboard players set #i bs.ctx 0
execute if biome ~ ~ ~ #bs.biome:type/group_1 run scoreboard players add #i bs.ctx 1
execute if biome ~ ~ ~ #bs.biome:type/group_2 run scoreboard players add #i bs.ctx 2
execute if biome ~ ~ ~ #bs.biome:type/group_4 run scoreboard players add #i bs.ctx 4
execute if biome ~ ~ ~ #bs.biome:type/group_8 run scoreboard players add #i bs.ctx 8
execute if biome ~ ~ ~ #bs.biome:type/group_16 run scoreboard players add #i bs.ctx 16
execute if biome ~ ~ ~ #bs.biome:type/group_32 run scoreboard players add #i bs.ctx 32
execute if biome ~ ~ ~ #bs.biome:type/group_64 run scoreboard players add #i bs.ctx 64

execute store result storage bs:ctx y short 1 run scoreboard players remove #i bs.ctx 1
execute unless score #i bs.ctx matches -1 run function bs.biome:get/biome/lookup with storage bs:ctx
