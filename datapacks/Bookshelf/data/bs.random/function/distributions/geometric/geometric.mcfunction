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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/random.html#random-distributions
# ------------------------------------------------------------------------------------------------------------

# Modified from https://github.com/Aeldrion/Minecraft-Random
$data modify storage bs:ctx _ set value $(probability)
execute store result score #random.p bs.data run data get storage bs:ctx _ 1000000000

scoreboard players set $random.geometric bs.out 0
function bs.random:distributions/geometric/loop
return run scoreboard players get $random.geometric bs.out
