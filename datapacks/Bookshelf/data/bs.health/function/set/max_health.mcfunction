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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#set
# ------------------------------------------------------------------------------------------------------------

$execute store result storage bs:ctx y double 0.00001 store result score #health bs.data run data get storage bs:const health.point $(points)

execute store success score #success bs.data run attribute @s minecraft:generic.max_health modifier value get bs.health:limit
execute if score #success bs.data matches 1 store result score #health.max bs.data run attribute @s minecraft:generic.max_health get 100000
execute if score #success bs.data matches 1 store result storage bs:ctx x double 0.00001 run scoreboard players operation #health.max bs.data -= #health bs.data
execute if score #success bs.data matches 1 if score #health.max bs.data matches ..0 run function bs.health:apply/increase_health with storage bs:ctx

function bs.health:apply/set_max_health with storage bs:ctx
