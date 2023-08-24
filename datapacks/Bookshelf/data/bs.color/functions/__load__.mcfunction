
scoreboard objectives add bs.in dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.out dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Output","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set 256 bs.const 256
scoreboard players set 65536 bs.const 65536

scoreboard players set $module.color.enabled bs.metadata 1

scoreboard players set $color.int_to_rgb.value bs.in 0
scoreboard players set $color.rgb_to_int.value.0 bs.in 0
scoreboard players set $color.rgb_to_int.value.1 bs.in 0
scoreboard players set $color.rgb_to_int.value.2 bs.in 0

scoreboard players set $color.rgb_to_int bs.out 0
scoreboard players set $color.int_to_rgb.0 bs.out 0
scoreboard players set $color.int_to_rgb.1 bs.out 0
scoreboard players set $color.int_to_rgb.2 bs.out 0

data modify storage bs:in color.int_to_rgb.value set value 0
data modify storage bs:in color.rgb_to_int.value set value [0,0,0]

data modify storage bs:out color.int_to_rgb set value [0,0,0]
data modify storage bs:out color.rgb_to_int set value 0
