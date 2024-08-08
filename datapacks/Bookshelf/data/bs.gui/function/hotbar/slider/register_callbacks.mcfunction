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
#  Register the callback functions to execute during a slide of the hotbar.
#
# Input:
#  - macro variable { callback: function, too_fast_callback: function, id: string }

# CODE ------------------------------------------------------------------------

$data modify storage bs:data gui.hotbar.slider."$(id)" set value { callback: "$(callback)", too_fast_callback: "$(too_fast_callback)" }