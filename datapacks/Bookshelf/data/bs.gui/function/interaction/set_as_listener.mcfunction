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
#  - Context: entity @s[type=interaction]
#
# Define the current interaction as a listener for events.

# CODE ------------------------------------------------------------------------

execute unless entity @s[type=interaction] run function #bs.log:error { path: "bs.gui:interaction/set_as_listener", feature: "interaction.set_as_listener", message: '"The current entity is not an interaction."'}
execute unless entity @s[type=interaction] run return fail

execute if entity @s[predicate=!bs.id:has_suid] run function #bs.id:give_suid
tag @s add bs.gui.listener