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

# Note: Detect if an hoverable entity is hovered. If yes, execute the actions linked to it.

execute unless predicate bs.interaction:is_looking_at_entity as @e[predicate=bs.interaction:on_leave, scores={bs.interaction.hover_state=1}] run function bs.interaction:on_event/hover/leave/leaved
execute unless predicate bs.interaction:is_looking_at_entity run scoreboard players reset @e[predicate=bs.interaction:on_leave, scores={bs.interaction.hover_state=1}] bs.interaction.hover_state
execute unless predicate bs.interaction:is_looking_at_entity run return fail
execute if entity @e[tag=bs.interaction.hover,tag=!bs.interaction.view.bi,sort=arbitrary,limit=1] run function bs.interaction:on_event/hover/setup
execute if score #interaction.view.looked_entity bs.data matches 1.. if predicate bs.interaction:looked_entity/b0 run tag @e[tag=bs.interaction.view.bi,tag=!bs.interaction.view.b0] remove bs.interaction.view.bi
execute if score #interaction.view.looked_entity bs.data matches 2.. if predicate bs.interaction:looked_entity/b1 run tag @e[tag=bs.interaction.view.bi,tag=!bs.interaction.view.b1] remove bs.interaction.view.bi
execute if score #interaction.view.looked_entity bs.data matches 4.. if predicate bs.interaction:looked_entity/b2 run tag @e[tag=bs.interaction.view.bi,tag=!bs.interaction.view.b2] remove bs.interaction.view.bi
execute if score #interaction.view.looked_entity bs.data matches 8.. if predicate bs.interaction:looked_entity/b3 run tag @e[tag=bs.interaction.view.bi,tag=!bs.interaction.view.b3] remove bs.interaction.view.bi
execute if score #interaction.view.looked_entity bs.data matches 16.. if predicate bs.interaction:looked_entity/b4 run tag @e[tag=bs.interaction.view.bi,tag=!bs.interaction.view.b4] remove bs.interaction.view.bi
execute if score #interaction.view.looked_entity bs.data matches 32.. if predicate bs.interaction:looked_entity/b5 run tag @e[tag=bs.interaction.view.bi,tag=!bs.interaction.view.b5] remove bs.interaction.view.bi
execute if score #interaction.view.looked_entity bs.data matches 64.. if predicate bs.interaction:looked_entity/b6 run tag @e[tag=bs.interaction.view.bi,tag=!bs.interaction.view.b6] remove bs.interaction.view.bi
execute if score #interaction.view.looked_entity bs.data matches 128.. if predicate bs.interaction:looked_entity/b7 run tag @e[tag=bs.interaction.view.bi,tag=!bs.interaction.view.b7] remove bs.interaction.view.bi
execute as @e[tag=bs.interaction.hover,tag=bs.interaction.view.bi,sort=arbitrary,limit=1,predicate=bs.interaction:on_enter] unless score @s bs.interaction.hover_state = @s bs.interaction.hover_state run function bs.interaction:on_event/hover/enter/entered
execute as @e[tag=bs.interaction.hover,tag=bs.interaction.view.bi,sort=arbitrary,limit=1] run scoreboard players set @s bs.interaction.hover_state 1
execute if entity @e[predicate=bs.interaction:on_hover, tag=bs.interaction.view.bi, sort=arbitrary, limit=1] run tag @s add bs.interaction.source
execute as @e[predicate=bs.interaction:on_hover, tag=bs.interaction.view.bi, sort=arbitrary, limit=1] run function bs.interaction:on_event/hover/hover/hovered
tag @e[tag=bs.interaction.hover,sort=arbitrary] add bs.interaction.view.bi
tag @s[tag=bs.interaction.source] remove bs.interaction.source
return 1
