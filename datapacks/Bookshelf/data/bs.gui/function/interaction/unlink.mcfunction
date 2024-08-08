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
#  Precondition:
#  - The current entity is a listener
# 
# Unlink the current listener to the icon.


# CODE ------------------------------------------------------------------------

execute as @e[tag=bs.gui.icon_linked] if score @s bs.id = @s bs.id run tag @s add bs.gui.unlink
execute as @e[tag=bs.gui.unlink] run scoreboard players reset @s bs.id
execute as @e[tag=bs.gui.unlink] run tag @s remove bs.gui.icon_linked
tag @e[tag=bs.gui.unlink] remove bs.gui.unlink