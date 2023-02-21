function bs.sandbox:math/plot/create
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players set @s bs.out.0 -1000
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.plot.y = @s bs.out.0
tag @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] add bs.sandbox.plot.random
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run function bs.sandbox:math/plot/draw

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"-10"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_x_n
summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"10"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_x_p

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"0"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_y_n
summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"100"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_y_p

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"random"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_title
