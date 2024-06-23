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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#can-see-as-to-at
# ------------------------------------------------------------------------------------------------------------

execute as B5-0-0-0-1 run function bs.view:can_see_ata/max_distance/at
execute store result score #view.can_see_ata.x2 bs.data run data get entity @s Pos[0] 1000
execute store result score #view.can_see_ata.y2 bs.data run data get entity @s Pos[1] 1000
execute store result score #view.can_see_ata.z2 bs.data run data get entity @s Pos[2] 1000
execute store result storage bs:ctx x int 1 run scoreboard players operation #view.can_see_ata.x1 bs.data -= #view.can_see_ata.x2 bs.data
execute store result storage bs:ctx y int 1 run scoreboard players operation #view.can_see_ata.y1 bs.data -= #view.can_see_ata.y2 bs.data
execute store result storage bs:ctx z int 1 run scoreboard players operation #view.can_see_ata.z1 bs.data -= #view.can_see_ata.z2 bs.data
function bs.view:can_see_ata/max_distance/compute with storage bs:ctx

execute facing entity @s eyes run function bs.raycast:run
execute if score #raycast.distance bs.data matches 2147483647 run return 1
return fail
