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
# The current interaction is not a listener anymore.

# CODE ------------------------------------------------------------------------

function bs.gui:interaction/unlink
function bs.gui:interaction/event/clear_events
data modify storage bs:ctx _ set value {}
execute store result storage bs:ctx _.id int 1 run scoreboard players get @s bs.id
function bs.gui:interaction/clean_storage with storage bs:ctx _
tag @s remove bs.gui.listener