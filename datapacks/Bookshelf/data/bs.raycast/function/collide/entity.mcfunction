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

data modify storage bs:out raycast.targeted_entity set from entity @s UUID
execute store result storage bs:out raycast.distance double .001 run scoreboard players get #raycast.distance bs.data
execute if data storage bs:data raycast.on_targeted_entity at @s run function bs.raycast:react/targeted_entity with storage bs:data raycast
execute summon minecraft:marker run function bs.raycast:compute/hit_point with storage bs:out raycast

execute unless score #raycast.piercing bs.data matches 0 run scoreboard players set #raycast.distance bs.data 2147483647
execute if score #raycast.piercing bs.data matches 0 run scoreboard players set #raycast.limit bs.data -2147483648
scoreboard players remove #raycast.piercing bs.data 1
