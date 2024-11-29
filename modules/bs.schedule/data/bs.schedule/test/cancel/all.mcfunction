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

await entity B5-0-0-0-2

scoreboard players set #packtest.schedule.ca bs.data 0
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.ca bs.data 1",time:1}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.ca bs.data 1",time:1,id:{cancel:"all"}}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.ca bs.data 1",time:1,id:{cancel:"all"}}}
function #bs.schedule:cancel_all {with:{id:{cancel:"all"}}}

await delay 1t
assert score #packtest.schedule.ca bs.data matches 1
