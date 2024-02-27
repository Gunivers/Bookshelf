# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.out dummy [{"text":"BS ","color":"dark_gray"},{"text":"Output","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set 2 bs.const 2
scoreboard players set 5 bs.const 5
scoreboard players set 6 bs.const 6
scoreboard players set 9 bs.const 9
scoreboard players set 81 bs.const 81
scoreboard players set 100 bs.const 100
scoreboard players set 325 bs.const 325

# level 1111129 => max_points = 10000002
data modify storage bs:const xp.progress set value 100000.02
