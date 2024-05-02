# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

setblock -30000000 0 1605 minecraft:air
forceload remove -30000000 1600

data remove storage bs:data log
data remove storage bs:const log
scoreboard objectives remove bs.out
scoreboard objectives remove bs.in