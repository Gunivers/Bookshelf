# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/Bookshelf).
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

forceload add -30000000 1600
execute unless entity B5-0-0-0-2 run summon minecraft:text_display -30000000 0 1600 {UUID:[I;181,0,0,2],Tags:["bs.entity","bs.persistent","smithed.entity","smithed.strict"],view_range:0f}

scoreboard objectives add bs.ctx dummy [{"text":"BS ","color":"dark_gray"},{"text":"Context","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard objectives add bs.interaction.id dummy [{"text":"BS ","color":"dark_gray"},{"text":"Interaction ID","color":"aqua"}]
scoreboard objectives add bs.interaction.hover dummy [{"text":"BS ","color":"dark_gray"},{"text":"Interaction Hover","color":"aqua"}]
scoreboard objectives add bs.interaction.logout minecraft.custom:leave_game [{"text":"BS ","color":"dark_gray"},{"text":"Interaction Logout","color":"aqua"}]

scoreboard players set 2 bs.const 2
