# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add -30000000 1600
setblock -30000000 0 1605 minecraft:repeating_command_block[facing=up]{auto:1b,Command:"help me",TrackOutput:1}

scoreboard objectives add bs.out dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Output","color":"aqua"}]
