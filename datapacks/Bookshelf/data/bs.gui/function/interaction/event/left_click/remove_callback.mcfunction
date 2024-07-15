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
#  Remove the left_click callback with the given ID.
# Input: 
#   - Macro { id: integer, callback_id: integer }
# Output: the number of left_click callback remaining.

# CODE ------------------------------------------------------------------------

$data remove storage bs:data gui.listener.$(id).left_click[{id: $(callback_id)}]
$return run data remove storage bs:data gui.listener.$(id).left_click