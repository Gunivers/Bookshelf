# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

kill B5-0-0-0-1
forceload remove -30000000 1600

scoreboard objectives remove bs.in
scoreboard objectives remove bs.data

data remove storage bs:data raycast
data remove storage bs:out raycast
