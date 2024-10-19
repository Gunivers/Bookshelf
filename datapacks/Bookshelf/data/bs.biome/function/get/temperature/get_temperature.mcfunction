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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/biome.html#get-temperature
# ------------------------------------------------------------------------------------------------------------

function #bs.biome:get_biome
execute store result score #t bs.ctx run data get storage bs:out biome.temperature 100000000

execute as B5-0-0-0-1 run function bs.biome:get/temperature/variation
execute if score #v bs.ctx matches 1.. run scoreboard players operation #v bs.ctx *= 125000 bs.const
execute if score #v bs.ctx matches 1.. run scoreboard players operation #t bs.ctx -= #v bs.ctx
execute store result storage bs:ctx y double .00000001 run scoreboard players get #t bs.ctx

$return run execute store result score $biome.get_temperature bs.out run data get storage bs:ctx y $(scale)
