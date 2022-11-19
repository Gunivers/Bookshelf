function glib_sandbox:math/plot/create
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run scoreboard players operation @s glib.var0 = @s glib.plot.x
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run scoreboard players operation @s glib.var0 *= 180 glib.const
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run scoreboard players operation @s glib.var0 /= 1000 glib.const
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run function glib.math:trig/tan
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run scoreboard players operation @s glib.plot.y = @s glib.res0
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run function glib_sandbox:math/plot/draw

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["glib","glib.sandbox.plot.legend.new"],CustomName:'{"text":"-180°"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=glib.sandbox.plot.legend.new] run function glib_sandbox:math/plot/legend/add_x_n
summon minecraft:armor_stand 0.5 97 0.5 {Tags:["glib","glib.sandbox.plot.legend.new"],CustomName:'{"text":"180°"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=glib.sandbox.plot.legend.new] run function glib_sandbox:math/plot/legend/add_x_p

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["glib","glib.sandbox.plot.legend.new"],CustomName:'{"text":"-1"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=glib.sandbox.plot.legend.new] run function glib_sandbox:math/plot/legend/add_y_n
summon minecraft:armor_stand 0.5 97 0.5 {Tags:["glib","glib.sandbox.plot.legend.new"],CustomName:'{"text":"1"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=glib.sandbox.plot.legend.new] run function glib_sandbox:math/plot/legend/add_y_p

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["glib","glib.sandbox.plot.legend.new"],CustomName:'{"text":"tan(x)"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=glib.sandbox.plot.legend.new] run function glib_sandbox:math/plot/legend/add_title
