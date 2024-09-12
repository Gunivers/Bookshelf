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
#  Remove the leave callback with the given ID.
# Input: 
#   - Macro { id: integer, callback_id: integer }
# Output: the number of leave callback remaining.

# CODE ------------------------------------------------------------------------

$data remove storage bs:data gui.listener.$(id).leave[{id: $(callback_id)}]
$return run data remove storage bs:data gui.listener.$(id).leave