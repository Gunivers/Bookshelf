# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add 0 0
execute unless entity B5-0-0-0-3 run summon minecraft:item_display 0.0 0.0 0.0 {view_range:0f,UUID:[I;181,0,0,3],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Item Display","color":"aqua"}]'}

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
