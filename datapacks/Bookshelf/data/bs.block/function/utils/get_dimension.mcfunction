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

execute if dimension minecraft:overworld run return run data modify storage bs:data block._.dim set value "minecraft:overworld"
execute if dimension minecraft:the_nether run return run data modify storage bs:data block._.dim set value "minecraft:the_nether"
execute if dimension minecraft:the_end run return run data modify storage bs:data block._.dim set value "minecraft:the_end"

execute positioned -30000000 0 1600 summon piglin_brute run function bs.block:utils/get_custom_dimension
