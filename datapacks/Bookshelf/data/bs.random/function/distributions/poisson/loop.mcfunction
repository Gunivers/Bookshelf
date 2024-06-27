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
scoreboard players add #random.k bs.data 1

execute store result score #result bs.data run random value 0..65536
scoreboard players operation #random.p bs.data /= 65536 bs.const
scoreboard players operation #random.p bs.data *= #result bs.data

execute if score #random.p bs.data > #random.exp(-l) bs.data run function bs.random:distributions/poisson/loop
