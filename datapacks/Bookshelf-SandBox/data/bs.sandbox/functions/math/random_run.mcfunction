function bs.math:special/random
scoreboard players operation @s bs.res0 %= 2001 bs.const
scoreboard players operation @s bs.res0 -= 1000 bs.const
execute as @e[tag=bs.sandbox.plot.random,tag=!bs.sandbox.plot.random.locked] run scoreboard players operation @s bs.var0 = @s bs.plot.x

scoreboard players operation @s bs.res0 /= 100 bs.const
execute as @e[tag=bs.sandbox.plot.random,tag=!bs.sandbox.plot.random.locked] run scoreboard players operation @s bs.var0 /= 100 bs.const

execute at @s as @e[tag=bs.sandbox.plot.random,tag=!bs.sandbox.plot.random.locked] if score @s bs.var0 = @e[limit=1,sort=nearest] bs.res0 run scoreboard players add @s bs.plot.y 10
execute at @s as @e[tag=bs.sandbox.plot.random,tag=!bs.sandbox.plot.random.locked] if score @s bs.var0 = @e[limit=1,sort=nearest] bs.res0 run function bs.sandbox:math/plot/draw
