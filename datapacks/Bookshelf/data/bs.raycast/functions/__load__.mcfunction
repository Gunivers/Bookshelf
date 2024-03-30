# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add -30000000 1600
execute unless entity B5-0-0-0-1 run summon minecraft:marker -30000000 0 1600 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"]}

scoreboard objectives add bs.in dummy [{"text":"BS ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

execute store result score #result bs.data run worldborder get
execute if score #result bs.data matches 2147481.. run worldborder set 2147480 0

scoreboard players set -1000 bs.const -1000
scoreboard players set 2 bs.const 2
scoreboard players set 500 bs.const 500
scoreboard players set 1000 bs.const 1000
