# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.out dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Output","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set 125000 bs.const 125000
scoreboard players set $module.biome.enabled bs.metadata 1
