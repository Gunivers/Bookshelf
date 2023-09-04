# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add -1 -1 1 1
execute unless entity B5-0-0-0-1 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;181,0,0,1]}

scoreboard objectives add bs.in dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.out dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Output","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set -4 bs.const -4
scoreboard players set -2 bs.const -2
scoreboard players set -1 bs.const -1
scoreboard players set 2 bs.const 2
scoreboard players set 10 bs.const 10
scoreboard players set 119 bs.const 119
scoreboard players set 1000 bs.const 1000
scoreboard players set 4214 bs.const 4214
scoreboard players set 50436 bs.const 50436
scoreboard players set 10000 bs.const 10000
scoreboard players set 100000 bs.const 100000
scoreboard players set 10000000 bs.const 10000000

data modify storage bs:const math.exp.table set value [0.0024787521766663585,0.006737946999085467,0.01831563888873418,0.049787068367863944,0.1353352832366127,0.36787944117144233,1.0,2.718281828459045,7.38905609893065,20.085536923187668,54.598150033144236,148.4131591025766,403.4287934927351,1096.6331584284585,2980.9579870417283,8103.083927575384,22026.465794806718,59874.14171519782,162754.79141900392,442413.3920089205,1202604.2841647768]
