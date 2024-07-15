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
#  Close the current player's hotbar slider.

# CODE ------------------------------------------------------------------------

tag @s remove bs.gui.hotbar_slider
scoreboard players reset @s bs.gui.slider_slot
scoreboard players reset @s bs.gui.slider_state
scoreboard players reset @s bs.gui.slider_step
function bs.gui:hotbar/slider/reset_storage