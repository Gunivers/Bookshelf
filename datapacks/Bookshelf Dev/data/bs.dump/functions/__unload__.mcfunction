# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

kill B5-0-0-0-2
forceload remove -30000000 1600

scoreboard objectives remove bs.const
scoreboard objectives remove bs.data

data remove storage bs:const dump
data remove storage bs:data dump
data remove storage bs:out dump
