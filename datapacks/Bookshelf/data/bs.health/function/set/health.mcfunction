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

# Note: Thanks to XanBelOr for giving the idea to use an advancement to subtick heal the player.

$execute store result score #h bs.ctx run data get storage bs:const health.point $(points)

execute store result score #m bs.ctx run attribute @s minecraft:generic.max_health get 100000
execute store result score #a bs.ctx run attribute @s minecraft:generic.max_health modifier value get bs.health:limit 100000
scoreboard players operation #m bs.ctx -= #a bs.ctx

execute store result score #p bs.ctx run data get entity @s Health 100000
execute store result storage bs:ctx x double -0.00001 run scoreboard players operation #m bs.ctx -= #h bs.ctx
execute if score #m bs.ctx matches ..-1 run data modify storage bs:ctx x set value 0
execute if score #p bs.ctx > #h bs.ctx run return run function bs.health:apply/decrease_health with storage bs:ctx
execute if score #p bs.ctx < #h bs.ctx run return run function bs.health:apply/increase_health with storage bs:ctx
