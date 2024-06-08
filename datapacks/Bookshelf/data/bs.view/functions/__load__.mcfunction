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
forceload add -30000000 1600
execute unless entity B5-0-0-0-1 run summon minecraft:marker -30000000 0 1600 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"]}
execute unless entity B5-0-0-0-2 run summon minecraft:text_display -30000000 0 1600 {UUID:[I;181,0,0,2],Tags:["bs.entity","bs.persistent"],view_range:0f}
execute unless entity B5-0-0-0-4 run summon minecraft:snowball -30000000 0 1600 {UUID:[I;181,0,0,4],Tags:["bs.entity","bs.persistent"],NoGravity:1b,Invulnerable:1b}

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]

execute unless data storage bs:in view.can_see_ata run data modify storage bs:in view.can_see_ata set value { \
  ignored_blocks: "#bs.view:can_see_through", \
}

execute unless data storage bs:in view.in_view_ata run data modify storage bs:in view.in_view_ata set value { \
  angle: 120.0, \
}
