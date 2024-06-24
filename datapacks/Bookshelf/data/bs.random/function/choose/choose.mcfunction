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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/random.html#random-choice
# ------------------------------------------------------------------------------------------------------------

execute store result score #count bs.data if data storage bs:in random.choose.options[]
execute store result score #result bs.data run random value 0..1000
scoreboard players remove #count bs.data 1
execute store result storage bs:ctx y int .001 run scoreboard players operation #result bs.data *= #count bs.data
function bs.random:choose/get with storage bs:ctx
return run data get storage bs:ctx y
