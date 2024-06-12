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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#add-remove
# ------------------------------------------------------------------------------------------------------------

# Note: Thanks to XanBelOr for giving the idea to use an advancement to subtick heal the player.

$execute store result score #health bs.data run data get storage bs:const health.point $(points)

execute store success score #success bs.data run attribute @s minecraft:generic.max_health modifier value get 68f0b501-5dca-4abb-8b69-057945a9583d
execute if score #success bs.data matches 1 store result score #health.points bs.data run attribute @s minecraft:generic.max_health get 100000
execute if score #success bs.data matches 0 store result score #health.points bs.data run data get entity @s Health 100000
scoreboard players operation #health bs.data += #health.points bs.data

execute store result score #health.max bs.data run attribute @s minecraft:generic.max_health get 100000
execute store result score #health.mod bs.data run attribute @s minecraft:generic.max_health modifier value get 68f0b501-5dca-4abb-8b69-057945a9583d 100000
scoreboard players operation #health.mod bs.data -= #health.max bs.data
execute store result storage bs:ctx x double 0.00001 run scoreboard players operation #health.mod bs.data += #health bs.data
execute if score #health.mod bs.data matches 1.. run data modify storage bs:ctx x set value 0
execute if score #health.points bs.data > #health bs.data run return run function bs.health:apply/decrease_health with storage bs:ctx
execute if score #health.points bs.data < #health bs.data run return run function bs.health:apply/increase_health with storage bs:ctx
