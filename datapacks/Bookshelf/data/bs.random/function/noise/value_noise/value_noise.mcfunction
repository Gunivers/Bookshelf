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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/random.html#noise
# ------------------------------------------------------------------------------------------------------------

$scoreboard players set #height bs.random $(height)
$scoreboard players set #width bs.random $(width)
$scoreboard players set #tile_size bs.random $(tile_size)
$data merge storage bs:random {exec_macro:{fn:""},with:{spacing:$(height),postpone:0}}
$data merge storage bs:random {with:$(with)}
execute store result score #spacing bs.random run data get storage bs:random with.spacing
execute store result score #postpone bs.random run data get storage bs:random with.postpone
data modify storage bs:random exec_macro.fn set from storage bs:random with.function
scoreboard players set #x bs.random 0
scoreboard players set #y bs.random 1
data merge storage bs:out {random:{noise:[]}}
function bs.random:noise/value_noise/xloop
execute store result score #tmp bs.random run random value 1..10000
scoreboard players operation #seed bs.random += #tmp bs.random