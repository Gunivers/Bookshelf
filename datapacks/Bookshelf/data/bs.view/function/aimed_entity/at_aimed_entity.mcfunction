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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#aimed-entity
# ------------------------------------------------------------------------------------------------------------

# run the raycast at the entity eyes
execute at @s anchored eyes positioned ^ ^ ^ run function bs.raycast:run

# run the command at the entity that was found or return early
execute unless data storage bs:out raycast.targeted_entity run return fail
data modify entity B5-0-0-0-4 Owner set from storage bs:out raycast.targeted_entity
tag @s add bs.view.this
$execute as B5-0-0-0-4 on origin at @s as @n[tag=bs.view.this,sort=arbitrary] run $(run)
tag @s remove bs.view.this
