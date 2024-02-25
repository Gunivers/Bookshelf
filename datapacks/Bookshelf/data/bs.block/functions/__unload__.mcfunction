# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

kill B5-0-0-0-1
forceload remove 0 0

scoreboard objectives remove bs.data

data remove storage bs:in block
data remove storage bs:out block
data remove storage bs:const block
data remove storage bs:data block
