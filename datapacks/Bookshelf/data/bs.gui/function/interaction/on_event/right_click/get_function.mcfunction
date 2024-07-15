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
#    - storage { id: integer } the key where the function is stored
#  Output:
#    - bs:out gui.callbacks the function to execute and its executor


# CODE ------------------------------------------------------------------------

$execute if data storage bs:data gui.listener.$(id).right_click run data modify storage bs:out gui.callbacks set from storage bs:data gui.listener.$(id).right_click