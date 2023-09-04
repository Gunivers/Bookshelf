# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

kill B5-0-0-0-1
forceload remove -1 -1 1 1

scoreboard objectives remove bs.in
scoreboard objectives remove bs.out
scoreboard objectives remove bs.data
scoreboard objectives remove bs.const

data remove storage bs:const math
