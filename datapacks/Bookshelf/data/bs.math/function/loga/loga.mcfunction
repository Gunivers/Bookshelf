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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#logarithm
# ------------------------------------------------------------------------------------------------------------

data modify storage bs:ctx x set from storage bs:in math.loga.a
function bs.math:log2/run

scoreboard players set #math.loga.a bs.data 2000000000
execute store result score #math.loga.b bs.data run data get storage bs:ctx x 20000
execute store result storage bs:ctx y double 1 run scoreboard players operation #math.loga.a bs.data /= #math.loga.b bs.data

data modify storage bs:ctx x set from storage bs:in math.loga.x
function bs.math:log2/run
function bs.math:loga/mul with storage bs:ctx
