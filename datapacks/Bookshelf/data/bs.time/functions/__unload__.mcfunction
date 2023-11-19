# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

setblock -30000000 0 1605 minecraft:air
forceload remove -30000000 1600

data remove storage bs:data time
scoreboard objectives remove bs.out
