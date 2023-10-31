# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add 0 0
execute unless entity B5-0-0-0-1 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Marker","color":"aqua"}]'}
execute unless entity B5-0-0-0-2 run summon minecraft:text_display 0.0 0.0 0.0 {view_range:0f,UUID:[I;181,0,0,2],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Text Display","color":"aqua"}]'}

scoreboard objectives add bs.out dummy [{"text":"BS ","color":"dark_gray"},{"text":"Output","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]
scoreboard objectives add bs.pos.x dummy [{"text":"BS ","color":"dark_gray"},{"text":"Position X","color":"aqua"}]
scoreboard objectives add bs.pos.y dummy [{"text":"BS ","color":"dark_gray"},{"text":"Position Y","color":"aqua"}]
scoreboard objectives add bs.pos.z dummy [{"text":"BS ","color":"dark_gray"},{"text":"Position Z","color":"aqua"}]
scoreboard objectives add bs.rot.h dummy [{"text":"BS ","color":"dark_gray"},{"text":"Rotation H","color":"aqua"}]
scoreboard objectives add bs.rot.v dummy [{"text":"BS ","color":"dark_gray"},{"text":"Rotation V","color":"aqua"}]

scoreboard players set 180 bs.const 180
scoreboard players set 360 bs.const 360
scoreboard players set 1000 bs.const 1000
