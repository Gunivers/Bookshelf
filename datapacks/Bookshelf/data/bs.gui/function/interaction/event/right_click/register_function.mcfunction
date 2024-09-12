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
#  Add a function to execute when an right click event is triggered on the listener with the specified ID.
#
# Input:
#  - macro variable { callback: function, id: integer, callback_id: integer, executor: target|source }

# CODE ------------------------------------------------------------------------

$data modify storage bs:data gui.listener.$(id).right_click append value { id: $(callback_id), callback: "$(callback)", executor: "$(executor)" }