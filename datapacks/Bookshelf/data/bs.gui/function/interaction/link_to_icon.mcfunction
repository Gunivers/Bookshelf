# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: theogiraudet
# Contributors:

# Version: 1.0
# Created: 30/03/2024 (24w13a)
# Last modification: 30/03/2024 (24w13a)

# Documentation: 
# Dependencies:
# Note: 
#
#  Input:
#  - Entities with tags: bs.gui.interaction, bs.gui.icon
#  
#  Precondition:
#  - Entity with tag bs.gui.interaction is a listener
#
#  Link the interaction with tag bs.gui.interaction to the entity bs.gui.icon, used as icon of the interaction.
#  When defined, all interaction with the interaction entity is redirected to the linked entity.
#  An icon cannot be linked to multiple interactions.
#  An interaction cannot be linked to multiple icons.
#
# Side effects:
#  the two tags are removed from the entities


# CODE ------------------------------------------------------------------------

execute unless entity @e[tag=bs.gui.interaction] run function #bs.log:error { path: "bs.gui:interaction/link_to_icon", feature: "interaction.link_to_icon", message: '"No interaction with tag \'bs.gui.interaction\'."'}
execute unless entity @e[tag=bs.gui.interaction, predicate=bs.gui:interaction/is_listener] run function #bs.log:error { path: "bs.gui:interaction/link_to_icon", feature: "interaction.link_to_icon", message: '"The interaction with tag \'bs.gui.interaction\' is not a listener."'}
execute unless entity @e[tag=bs.gui.icon] run function #bs.log:error { path: "bs.gui:interaction/link_to_icon", feature: "interaction.link_to_icon", message: '"No entity with tag \'bs.gui.icon\'"'}
execute unless entity @e[tag=bs.gui.interaction, type=interaction, predicate=bs.gui:interaction/is_listener] run return fail
execute unless entity @e[tag=bs.gui.icon] run return fail

execute as @e[tag=bs.gui.icon, predicate=!bs.id:has_suid] run scoreboard players operation @s bs.id = @e[tag=bs.gui.interaction, limit=1] bs.id
execute as @e[tag=bs.gui.icon] run tag @s add bs.gui.icon_linked

tag @e[tag=bs.gui.interaction] remove bs.gui.interaction
tag @e[tag=bs.gui.icon] remove bs.gui.icon