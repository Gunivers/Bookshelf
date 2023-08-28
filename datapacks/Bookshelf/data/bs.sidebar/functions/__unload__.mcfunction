# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives remove bs.data

scoreboard players reset $module.sidebar.enabled bs.metadata

forceload remove 0 0
kill c9337257-2804-47d4-90bf-3eb772a4c30c
data remove storage bs:sidebar registry
data remove storage bs:sidebar do
