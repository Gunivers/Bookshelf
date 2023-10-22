# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.out dummy [{"text":"BS ","color":"dark_gray"},{"text":"Output","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set 256 bs.const 256
scoreboard players set 65536 bs.const 65536

scoreboard players add $color.int_to_rgb.r bs.out 0
scoreboard players add $color.int_to_rgb.g bs.out 0
scoreboard players add $color.int_to_rgb.b bs.out 0
scoreboard players add $color.rgb_to_int bs.out 0

execute unless data storage bs:out color.int_to_rgb run data modify storage bs:out color.int_to_rgb set value [0,0,0]
execute unless data storage bs:out color.rgb_to_int run data modify storage bs:out color.rgb_to_int set value 0
