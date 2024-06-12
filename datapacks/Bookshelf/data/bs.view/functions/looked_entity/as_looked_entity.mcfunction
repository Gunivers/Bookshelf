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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#looked-entity
# ------------------------------------------------------------------------------------------------------------

execute unless predicate bs.view:is_looking_at_entity run return fail
execute if entity @e[tag=bs.view.is_lookable,tag=!bs.view.bi,sort=arbitrary,limit=1] run function bs.view:looked_entity/setup
tag @e[tag=bs.view.is_lookable,sort=arbitrary] add bs.view.selected
execute if score #view.looked_entity bs.data matches 1.. if predicate bs.view:looked_entity/b0 run tag @e[tag=bs.view.selected,tag=!bs.view.b0] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 2.. if predicate bs.view:looked_entity/b1 run tag @e[tag=bs.view.selected,tag=!bs.view.b1] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 4.. if predicate bs.view:looked_entity/b2 run tag @e[tag=bs.view.selected,tag=!bs.view.b2] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 8.. if predicate bs.view:looked_entity/b3 run tag @e[tag=bs.view.selected,tag=!bs.view.b3] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 16.. if predicate bs.view:looked_entity/b4 run tag @e[tag=bs.view.selected,tag=!bs.view.b4] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 32.. if predicate bs.view:looked_entity/b5 run tag @e[tag=bs.view.selected,tag=!bs.view.b5] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 64.. if predicate bs.view:looked_entity/b6 run tag @e[tag=bs.view.selected,tag=!bs.view.b6] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 128.. if predicate bs.view:looked_entity/b7 run tag @e[tag=bs.view.selected,tag=!bs.view.b7] remove bs.view.selected
$execute as @e[tag=bs.view.is_lookable,tag=bs.view.selected,sort=arbitrary,limit=1] run return run $(run)
