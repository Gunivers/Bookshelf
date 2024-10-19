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
# ------------------------------------------------------------------------------------------------------------

data modify entity B5-0-0-0-4 Owner set from storage bs:data schedule.slice[-1].uuid
$execute as B5-0-0-0-4 on origin $(cmd)

data remove storage bs:data schedule.slice[-1]
execute if data storage bs:data schedule.slice[-1] run function bs.schedule:execute/loop with storage bs:data schedule.slice[-1]
