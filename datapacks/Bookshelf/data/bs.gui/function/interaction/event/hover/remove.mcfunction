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
#  Remove a callback for the hover event on the current listener.
# Input: 
#   - Macro { callback_id: integer }
#   - @s - the current listener

# CODE ------------------------------------------------------------------------

execute unless predicate bs.gui:interaction/is_listener run function #bs.log:error { path: "bs.gui:interaction/event/hover/remove", feature: "interaction.event.hover.remove", message: '"The current entity is not a listener."'}
execute unless predicate bs.gui:interaction/is_listener run return fail

$data modify storage bs:ctx _ set value { callback_id: $(callback_id) }
execute store result storage bs:ctx _.id int 1 run scoreboard players get @s bs.id

# Return the number of remaining callbacks for the hover event
execute store result score #result bs.data run function bs.gui:interaction/event/hover/remove_callback with storage bs:ctx _

execute if score #result bs.data matches 0 run tag @s[tag=bs.gui.listen_hover] remove bs.gui.listen_hover
execute if score #result bs.data matches 0 run tag @s[tag=!bs.gui.listen_leave, tag=!bs.gui.listen_enter] remove bs.gui.hover