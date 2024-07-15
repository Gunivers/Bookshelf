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
#  Executed when an interaction is roght clicked, trigger the callbacks linked to the current interaction, defined with the right_click/add function.
#
# Input:
#  - bs:in gui.callbacks: The list of callbacks linked to the current interaction for the right click event.

# CODE ------------------------------------------------------------------------

data modify storage bs:in gui.callback set from storage bs:in gui.callbacks[0]

# Get the executor
function bs.gui:interaction/on_event/get_executor

data modify storage bs:ctx _ set value {}
data modify storage bs:ctx _.function set from storage bs:in gui.callback.callback

execute as @e[tag=bs.gui.executor] run function bs.gui:interaction/on_event/right_click/execute_function with storage bs:ctx _

data remove storage bs:in gui.callbacks[0]
execute if data storage bs:in gui.callbacks[0] run function bs.gui:interaction/on_event/right_click/execute_functions

tag @e[tag=bs.gui.executor] remove bs.gui.executor