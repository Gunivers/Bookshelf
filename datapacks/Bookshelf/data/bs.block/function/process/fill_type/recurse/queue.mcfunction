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

execute store result storage bs:data block.process.x int 1 run scoreboard players get #block.x bs.data
execute store result storage bs:data block.process.y int 1 run scoreboard players get #block.y bs.data
execute store result storage bs:data block.process.z int 1 run scoreboard players get #block.z bs.data

data modify storage bs:data block.fill_type append from storage bs:data block.process
schedule function bs.block:process/fill_type/recurse/resume 1t replace
