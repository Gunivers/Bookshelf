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
#    - storage { id: integer } the key where the functions are stored
#  Output:
#    - bs.out:gui.callback the functions to execute


# CODE ------------------------------------------------------------------------

$execute if data storage bs:data gui.hotbar.slider."$(id)" run data modify storage bs:out gui.callbacks set from storage bs:data gui.hotbar.slider."$(id)"