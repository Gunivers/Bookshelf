# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives remove bs.data

scoreboard players reset $module.sidebar.enabled bs.metadata

forceload remove 0 0
kill B5-0-0-0-2
data remove storage bs:sidebar registry
data remove storage bs:sidebar do
