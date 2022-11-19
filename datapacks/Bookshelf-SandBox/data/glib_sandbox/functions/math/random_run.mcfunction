function glib.math:special/random
scoreboard players operation @s glib.res0 %= 2001 glib.const
scoreboard players operation @s glib.res0 -= 1000 glib.const
execute as @e[tag=glib.sandbox.plot.random,tag=!glib.sandbox.plot.random.locked] run scoreboard players operation @s glib.var0 = @s glib.plot.x

scoreboard players operation @s glib.res0 /= 100 glib.const
execute as @e[tag=glib.sandbox.plot.random,tag=!glib.sandbox.plot.random.locked] run scoreboard players operation @s glib.var0 /= 100 glib.const

execute at @s as @e[tag=glib.sandbox.plot.random,tag=!glib.sandbox.plot.random.locked] if score @s glib.var0 = @e[limit=1,sort=nearest] glib.res0 run scoreboard players add @s glib.plot.y 10
execute at @s as @e[tag=glib.sandbox.plot.random,tag=!glib.sandbox.plot.random.locked] if score @s glib.var0 = @e[limit=1,sort=nearest] glib.res0 run function glib_sandbox:math/plot/draw
