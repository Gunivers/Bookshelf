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

data modify storage bs:ctx _ set value {sx:"",sy:"",sz:""}
data modify storage bs:ctx _.pos set from entity @s Pos

data modify storage bs:ctx _.s set string storage bs:ctx _.pos[0] 0 1
execute if data storage bs:ctx _{s:"-"} run data modify storage bs:ctx _.x set string storage bs:ctx _.pos[0] 1 -1
execute unless data storage bs:ctx _{s:"-"} run data modify storage bs:ctx _.x set from storage bs:ctx _.pos[0]
execute unless data storage bs:ctx _{s:"-"} run data modify storage bs:ctx _.sx set value "-"

data modify storage bs:ctx _.s set string storage bs:ctx _.pos[1] 0 1
execute if data storage bs:ctx _{s:"-"} run data modify storage bs:ctx _.y set string storage bs:ctx _.pos[1] 1 -1
execute unless data storage bs:ctx _{s:"-"} run data modify storage bs:ctx _.y set from storage bs:ctx _.pos[1]
execute unless data storage bs:ctx _{s:"-"} run data modify storage bs:ctx _.sy set value "-"

data modify storage bs:ctx _.s set string storage bs:ctx _.pos[2] 0 1
execute if data storage bs:ctx _{s:"-"} run data modify storage bs:ctx _.z set string storage bs:ctx _.pos[2] 1 -1
execute unless data storage bs:ctx _{s:"-"} run data modify storage bs:ctx _.z set from storage bs:ctx _.pos[2]
execute unless data storage bs:ctx _{s:"-"} run data modify storage bs:ctx _.sz set value "-"

execute summon minecraft:marker run function bs.view:can_see_ata/max_distance/get_rpos with storage bs:ctx _
function bs.view:can_see_ata/max_distance/compute with storage bs:ctx

execute facing entity @s eyes run function bs.raycast:run
return run execute if score #raycast.distance bs.data matches 2147483647
