# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add 0 0
execute unless entity B5-0-0-0-1 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Marker","color":"aqua"}]'}

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set 2 bs.const 2
scoreboard players set 11 bs.const 11
scoreboard players set 15 bs.const 15
scoreboard players set 255 bs.const 255
scoreboard players set 500 bs.const 500
scoreboard players set 1000 bs.const 1000
scoreboard players set 2000 bs.const 2000
scoreboard players set 65536 bs.const 65536
scoreboard players set 3129871 bs.const 3129871
scoreboard players set 16777216 bs.const 16777216
scoreboard players set 42317861 bs.const 42317861
scoreboard players set 116129781 bs.const 116129781
scoreboard players set 268435456 bs.const 268435456
