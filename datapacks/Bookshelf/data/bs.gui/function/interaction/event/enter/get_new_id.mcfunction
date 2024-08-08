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
#  Define a custom behavior for the enter event for the current interaction.
#
# Output:
#  - Return a new ID based on the ID of the last registered event incremented by 1.
#  - 0 if no event has been registered yet.

# CODE ------------------------------------------------------------------------

$execute store result score #result bs.data run data get storage bs:data gui.listener.$(id).enter[-1].id
scoreboard players add #result bs.data 1
return run scoreboard players get #result bs.data