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
#  Create a new slider in the current player hotbar.
#  Input: 
#    - macro { step: integer, default_state: integer, callback: function, too_fast_callback: function }

# CODE ------------------------------------------------------------------------

execute if predicate bs.gui:hotbar/has_hotbar_slider run function #bs.log:error { path: "bs.gui:hotbar/slider/new", feature: "hotbar.slider.new", message: '"The current entity already has a hotbar slider opened. Please, close it before opening a new one."'}
execute if predicate bs.gui:hotbar/has_hotbar_slider run return fail

tag @s add bs.gui.hotbar_slider

execute store result score @s bs.gui.slider_slot run data get entity @s SelectedItemSlot
$scoreboard players set @s bs.gui.slider_step $(step)
$scoreboard players set @s bs.gui.slider_state $(step)
$data modify storage bs:ctx _ set value { callback: "$(callback)", too_fast_callback: "$(too_fast_callback)" }
data modify storage bs:ctx _.id set from entity @s UUID
function bs.gui:hotbar/slider/register_callbacks with storage bs:ctx _