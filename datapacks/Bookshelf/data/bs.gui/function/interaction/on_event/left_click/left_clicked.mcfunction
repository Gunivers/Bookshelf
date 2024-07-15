# INFO ------------------------------------------------------------------------
# Copyleft © 2024 Gunivers Community.

# Authors: theogiraudet
# Contributors:

# Version: 1.0
# Created: 30/03/2024 (24w13a)
# Last modification: 30/03/2024 (24w13a)

# Documentation: 
# Dependencies:
# Note: 
#  Function called when a left click is done on a left click listener.

# CODE ------------------------------------------------------------------------

advancement revoke @s only bs.gui:interaction/left_click
tag @s add bs.gui.source
execute as @e[predicate=bs.gui:interaction/listen_left_click] at @s on target if entity @s[tag=bs.gui.source] as @e[type=interaction, limit=1, sort=nearest] run tag @s add bs.gui.target

# Get the function to execute
data modify storage bs:ctx _ set value {}
execute store result storage bs:ctx _.id int 1 run scoreboard players get @e[tag=bs.gui.target, limit=1] bs.id
function bs.gui:interaction/on_event/left_click/get_function with storage bs:ctx _

data modify storage bs:in gui.callbacks set from storage bs:out gui.callbacks
execute if data storage bs:in gui.callbacks[0] run function bs.gui:interaction/on_event/left_click/execute_functions 

tag @s remove bs.gui.source
tag @e[tag=bs.gui.target] remove bs.gui.target