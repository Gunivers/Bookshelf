# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------
# @dummy

function #bs.health:set_health {points:10.0}
function #bs.health:set_max_health {points:30.0}
execute store result score #r bs.ctx run data get entity @s Health
assert score #r bs.ctx matches 10

function #bs.health:set_max_health {points:20.0}
function #bs.health:set_health {points:30.0}
await delay 1t
execute store result score #r bs.ctx run data get entity @s Health
assert score #r bs.ctx matches 20