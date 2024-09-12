# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 06/12/2023 (1.20.3)
# Last modification: 29/04/2024 (1.20.6-rc1)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#looked-entity
# Dependencies:
# Note: Detect if an hoverable entity is hovered. If yes, execute the actions linked to it.

# CODE ------------------------------------------------------------------------

execute unless predicate bs.gui:is_looking_at_entity as @e[predicate=bs.gui:interaction/listen_leave, scores={bs.gui.hover_state=1}] run function bs.gui:interaction/on_event/hover/leave/leaved
execute unless predicate bs.gui:is_looking_at_entity run scoreboard players reset @e[predicate=bs.gui:interaction/listen_leave, scores={bs.gui.hover_state=1}] bs.gui.hover_state
execute unless predicate bs.gui:is_looking_at_entity run return fail
execute if entity @e[tag=bs.gui.hover,tag=!bs.view.bi,sort=arbitrary,limit=1] run function bs.gui:interaction/on_event/hover/setup
execute if score #view.looked_entity bs.data matches 1.. if predicate bs.gui:looked_entity/b0 run tag @e[tag=bs.view.bi,tag=!bs.view.b0] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 2.. if predicate bs.gui:looked_entity/b1 run tag @e[tag=bs.view.bi,tag=!bs.view.b1] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 4.. if predicate bs.gui:looked_entity/b2 run tag @e[tag=bs.view.bi,tag=!bs.view.b2] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 8.. if predicate bs.gui:looked_entity/b3 run tag @e[tag=bs.view.bi,tag=!bs.view.b3] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 16.. if predicate bs.gui:looked_entity/b4 run tag @e[tag=bs.view.bi,tag=!bs.view.b4] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 32.. if predicate bs.gui:looked_entity/b5 run tag @e[tag=bs.view.bi,tag=!bs.view.b5] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 64.. if predicate bs.gui:looked_entity/b6 run tag @e[tag=bs.view.bi,tag=!bs.view.b6] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 128.. if predicate bs.gui:looked_entity/b7 run tag @e[tag=bs.view.bi,tag=!bs.view.b7] remove bs.view.bi
execute as @e[tag=bs.gui.hover,tag=bs.view.bi,sort=arbitrary,limit=1,predicate=bs.gui:interaction/listen_enter] unless score @s bs.gui.hover_state = @s bs.gui.hover_state run function bs.gui:interaction/on_event/hover/enter/entered
execute as @e[tag=bs.gui.hover,tag=bs.view.bi,sort=arbitrary,limit=1] run scoreboard players set @s bs.gui.hover_state 1
execute if entity @e[predicate=bs.gui:interaction/listen_hover, tag=bs.view.bi, sort=arbitrary, limit=1] run tag @s add bs.gui.source
execute as @e[predicate=bs.gui:interaction/listen_hover, tag=bs.view.bi, sort=arbitrary, limit=1] run function bs.gui:interaction/on_event/hover/hover/hovered
tag @e[tag=bs.gui.hover,sort=arbitrary] add bs.view.bi
tag @s[tag=bs.gui.source] remove bs.gui.source
return 1