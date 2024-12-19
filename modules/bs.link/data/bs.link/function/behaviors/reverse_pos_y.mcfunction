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

scoreboard players operation @s bs.pos.y -= #y bs.ctx
scoreboard players operation @s bs.pos.y -= @s bs.link.ry
scoreboard players operation @s bs.pos.y += @s bs.pos.y
scoreboard players operation @s bs.link.ry += @s bs.pos.y
execute store result score @s bs.pos.y run scoreboard players operation #y bs.ctx += @s bs.link.ry