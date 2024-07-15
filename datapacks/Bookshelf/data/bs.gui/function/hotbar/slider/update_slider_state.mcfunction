# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: theogiraudet

# Version: 1.0
# Created: 23/03/2024 (24w12a)
# Last modification: 23/03/2024 (24w12a)

# Documentation: <https://link.to/documentation/page>
# Dependencies  : none
# Note:
#   Compute a new value according to the hotbar slide.
#   The value can only be incremented or decremented once per tick, if the hotbar slide is too fast, the player will be notified to slow down.
#   Work also when cycle.
#   Input: 
#       Score @s bs.gui.slider_state - the value to increment/decrement.
#       Score @s bs.gui.slider_step - the step to increment/decrement the value according to the hotbar slide. If the hotbar slide to the right, the value will be incremented by #step, if the hotbar slide to the left, the value will be decremented by #step.

# CODE ------------------------------------------------------------------------

data modify storage bs:ctx _ set value {}
data modify storage bs:ctx _.id set from entity @s UUID
function bs.gui:hotbar/slider/get_functions with storage bs:ctx _

scoreboard players operation @s bs.data = @s bs.gui.slider_slot
execute store result score @s bs.gui.slider_slot run data get entity @s SelectedItemSlot

execute if score @s bs.data matches 0 if score @s bs.gui.slider_slot matches 8 run scoreboard players operation @s bs.gui.slider_state -= @s bs.gui.slider_step
execute if score @s bs.data matches 0 if score @s bs.gui.slider_slot matches 8 run return 0
execute if score @s bs.data matches 8 if score @s bs.gui.slider_slot matches 0 run scoreboard players operation @s bs.gui.slider_state += @s bs.gui.slider_step
execute if score @s bs.data matches 8 if score @s bs.gui.slider_slot matches 0 run return 0

scoreboard players operation @s bs.data -= @s bs.gui.slider_slot
execute unless score @s bs.data matches -1..1 run function bs.gui:hotbar/slider/execute_too_fast_callback with storage bs:out gui.callbacks
execute unless score @s bs.data matches -1..1 run return fail

execute if score @s bs.data matches -1 run scoreboard players operation @s bs.gui.slider_state += @s bs.gui.slider_step
execute if score @s bs.data matches 1 run scoreboard players operation @s bs.gui.slider_state -= @s bs.gui.slider_step

function bs.gui:hotbar/slider/execute_callback with storage bs:out gui.callbacks
