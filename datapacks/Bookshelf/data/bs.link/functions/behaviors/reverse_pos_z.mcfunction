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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#reverse-behaviors
# ------------------------------------------------------------------------------------------------------------

scoreboard players operation @s bs.pos.z -= #link.origin.z bs.data
scoreboard players operation @s bs.pos.z -= @s bs.link.rz
scoreboard players operation @s bs.pos.z += @s bs.pos.z
scoreboard players operation @s bs.link.rz += @s bs.pos.z
execute store result score @s bs.pos.z run scoreboard players operation #link.origin.z bs.data += @s bs.link.rz
