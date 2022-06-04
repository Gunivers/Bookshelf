function glib_sandbox:math/plot/create
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run scoreboard players operation @s glib.var0 = @s glib.plot.x
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run scoreboard players operation @s glib.var0 += 1000 glib.const
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run scoreboard players operation @s glib.var0 *= 5 glib.const
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run function glib.math:common/sqrt
#execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run tellraw @a ["",{"text":"Var0: "},{"score":{"name":"@s","objective":"glib.var0"}},{"text":"   Res0: "},{"score":{"name":"@s","objective":"glib.res0"}}]
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run scoreboard players operation @s glib.res0 *= 20 glib.const
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run scoreboard players operation @s glib.res0 -= 1000 glib.const
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run scoreboard players operation @s glib.plot.y = @s glib.res0
execute as @e[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] run function glib_sandbox:math/plot/draw

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["glib","glib.sandbox.plot.legend.new"],CustomName:'{"text":"0"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=glib.sandbox.plot.legend.new] run function glib_sandbox:math/plot/legend/add_x_n
summon minecraft:armor_stand 0.5 97 0.5 {Tags:["glib","glib.sandbox.plot.legend.new"],CustomName:'{"text":"10,000"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=glib.sandbox.plot.legend.new] run function glib_sandbox:math/plot/legend/add_x_p

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["glib","glib.sandbox.plot.legend.new"],CustomName:'{"text":"0"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=glib.sandbox.plot.legend.new] run function glib_sandbox:math/plot/legend/add_y_n
summon minecraft:armor_stand 0.5 97 0.5 {Tags:["glib","glib.sandbox.plot.legend.new"],CustomName:'{"text":"100"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=glib.sandbox.plot.legend.new] run function glib_sandbox:math/plot/legend/add_y_p

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["glib","glib.sandbox.plot.legend.new"],CustomName:'{"text":"sqrt(x)"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=glib.sandbox.plot.legend.new] run function glib_sandbox:math/plot/legend/add_title
