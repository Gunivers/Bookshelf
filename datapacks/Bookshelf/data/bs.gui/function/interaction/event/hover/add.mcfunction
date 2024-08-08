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
#  Add a new callback to trigger when the current interaction is hovered.
#
# Input:
#  - macro variable { callback: function, executor: target|source }
# Output:
#  - Fail if the current entity is not a listener.

# CODE ------------------------------------------------------------------------

execute unless predicate bs.gui:interaction/is_listener run function #bs.log:error { path: "bs.gui:interaction/event/hover/add", feature: "interaction.event.hover.add", message: '"The current entity is not a listener."'}
execute unless predicate bs.gui:interaction/is_listener run return fail
$data modify storage bs:ctx _ set value { callback: "$(callback)", executor: "$(executor)" }
execute store result storage bs:ctx _.id int 1 run scoreboard players get @s bs.id
execute store result storage bs:ctx _.callback_id int 1 run function bs.gui:interaction/event/hover/get_new_id with storage bs:ctx _
tag @s add bs.gui.listen_hover
tag @s add bs.gui.hover
function bs.gui:interaction/event/hover/register_function with storage bs:ctx _