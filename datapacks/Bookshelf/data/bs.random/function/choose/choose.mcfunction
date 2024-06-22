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

$execute unless data storage bs:in random.choose run data modify storage bs:in random.choose set value {list:$(list)}
execute store result score #len bs.random run data get storage bs:in random.choose.list
scoreboard players remove #len bs.random 1
execute store result score #idx bs.random run random value 0..1000
scoreboard players operation #idx bs.random *= #len bs.random
data merge storage bs:random {tmp:{idx:0}}
execute store result storage bs:random tmp.idx int 0.001 run scoreboard players get #idx bs.random
function bs.random:choose/get with storage bs:random tmp