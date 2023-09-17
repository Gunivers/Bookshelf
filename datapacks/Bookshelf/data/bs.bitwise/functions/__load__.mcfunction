# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.in dummy [{"text":"BS ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.out dummy [{"text":"BS ","color":"dark_gray"},{"text":"Output","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set $module.bitwise.enabled bs.metadata 1

scoreboard players set -1 bs.const -1
scoreboard players set 2 bs.const 2
