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
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/random.html#random-choice
# ------------------------------------------------------------------------------------------------------------

$loot replace block -30000000 0 1606 container.0 loot $(_)
data modify storage bs:ctx _ set from block -30000000 0 1606 item.components."minecraft:custom_data"
data modify storage bs:out random.weighted_choice set from storage bs:ctx _.v
return run data get storage bs:ctx _.i
