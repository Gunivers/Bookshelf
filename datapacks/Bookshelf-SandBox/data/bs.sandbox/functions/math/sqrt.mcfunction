function bs.sandbox:math/plot/create
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.in.0 = @s bs.plot.x
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.in.0 += 1000 bs.const
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.in.0 *= 5 bs.const
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run function bs.math:sqrt
#execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run tellraw @a ["",{"text":"Var0: "},{"score":{"name":"@s","objective":"bs.in.0"}},{"text":"   Res0: "},{"score":{"name":"@s","objective":"bs.out.0"}}]
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.out.0 *= 20 bs.const
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.out.0 -= 1000 bs.const
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.plot.y = @s bs.out.0
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run function bs.sandbox:math/plot/draw

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"0"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_x_n
summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"10,000"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_x_p

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"0"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_y_n
summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"100"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_y_p

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"sqrt(x)"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_title
