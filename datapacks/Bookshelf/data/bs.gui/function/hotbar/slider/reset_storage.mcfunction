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
# Reset the slider hotbar storage of the current player.
# Input:
#  - macro variable { id: string }

# CODE ------------------------------------------------------------------------

$data remove storage bs:data gui.hotbar.slider."$(id)"