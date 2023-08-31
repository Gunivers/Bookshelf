# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add 0 0
execute unless entity 72398515-296d-4e77-bd30-412f6f65d642 run summon minecraft:marker 0 0 0 {UUID:[I;1916372245,695029367,-1120911057,1868944962]}
execute unless entity 3b1d6b85-f396-4483-be95-916c11eb0f07 run summon minecraft:item_display 0 0 0 {UUID:[I;991783813,-208255869,-1097494164,300617479]}

scoreboard objectives add bs.data dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]
scoreboard objectives add bs.pos.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Position X","color":"aqua"}]
scoreboard objectives add bs.pos.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Position Y","color":"aqua"}]
scoreboard objectives add bs.pos.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Position Z","color":"aqua"}]
scoreboard objectives add bs.rot.h dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Rotation H","color":"aqua"}]
scoreboard objectives add bs.rot.v dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Rotation V","color":"aqua"}]

scoreboard players set 180 bs.const 180
scoreboard players set 360 bs.const 360
