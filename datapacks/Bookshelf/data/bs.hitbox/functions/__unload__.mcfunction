# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

kill B5-0-0-0-1
forceload remove -30000000 1600

scoreboard objectives remove bs.out
scoreboard objectives remove bs.data
scoreboard objectives remove bs.const
scoreboard objectives remove bs.width
scoreboard objectives remove bs.height

data remove storage bs:out hitbox
data remove storage bs:data hitbox
