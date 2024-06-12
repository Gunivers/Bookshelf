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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#create-link
# ------------------------------------------------------------------------------------------------------------

tag @s add bs.link.this
execute as @e[tag=!bs.link.this,sort=nearest,limit=1] unless predicate bs.id:has_suid run function #bs.id:give_suid
scoreboard players operation @s bs.link.to = @e[tag=!bs.link.this,sort=nearest,limit=1] bs.id
tag @s remove bs.link.this
function #bs.link:update_link
