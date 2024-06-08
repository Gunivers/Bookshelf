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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/raycast.html#run-the-raycast
# ------------------------------------------------------------------------------------------------------------

tag @s add bs.raycast.omit
scoreboard players set #raycast.distance bs.data 2147483647
execute store result score #raycast.max_distance bs.data store result score #raycast.limit bs.data run data get storage bs:data raycast.max_distance 1000
data modify storage bs:out raycast set value {distance:0d}
execute as B5-0-0-0-1 run function bs.raycast:recurse/init
tag @e[tag=bs.raycast.omit] remove bs.raycast.omit

# return 0 early if no collision occured or compute output data then return 1
execute if score #raycast.distance bs.data matches 2147483647 run return 0
execute store result storage bs:out raycast.distance double .001 run scoreboard players get #raycast.distance bs.data
execute as B5-0-0-0-1 run function bs.raycast:compute/hit_point with storage bs:out raycast
return 1
