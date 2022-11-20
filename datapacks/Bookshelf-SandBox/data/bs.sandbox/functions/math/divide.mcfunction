function bs.sandbox:math/plot/create
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.var0 = @s bs.plot.x
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players set @s bs.var1 100
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run function bs.math:common/divide
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.var0 = @s bs.res0
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players set @s bs.var1 3
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run function bs.math:common/divide
#execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run tellraw @a ["",{"text":"Debug | bs.sandbox:math/plot/sin","color":"green"},{"text":"\n \u0020 Input : "},{"score":{"name":"@s","objective":"bs.var0"}},{"text":" Output : "},{"score":{"name":"@s","objective":"bs.res0"}}]

execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.res0 *= 1000 bs.const
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.res0 /= 3 bs.const
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run scoreboard players operation @s bs.plot.y = @s bs.res0
execute as @e[tag=bs.sandbox.plot,tag=!bs.sandbox.plot.drawed] run function bs.sandbox:math/plot/draw

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"-10"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_x_n
summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"10"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_x_p

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"-3"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_y_n
summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"3"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_y_p

summon minecraft:armor_stand 0.5 97 0.5 {Tags:["bs","bs.sandbox.plot.legend.new"],CustomName:'{"text":"divide(x,3)"}',CustomNameVisible:1b,NoGravity:1,Invisible:1,Marker:1}
execute as @e[tag=bs.sandbox.plot.legend.new] run function bs.sandbox:math/plot/legend/add_title
