function bs.math:special/random
scoreboard players operation @s bs.out.0 %= 2001 bs.const
scoreboard players operation @s bs.out.0 -= 1000 bs.const
execute as @e[tag=bs.sandbox.plot.random,tag=!bs.sandbox.plot.random.locked] run scoreboard players operation @s bs.in.0 = @s bs.plot.x

scoreboard players operation @s bs.out.0 /= 100 bs.const
execute as @e[tag=bs.sandbox.plot.random,tag=!bs.sandbox.plot.random.locked] run scoreboard players operation @s bs.in.0 /= 100 bs.const

execute at @s as @e[tag=bs.sandbox.plot.random,tag=!bs.sandbox.plot.random.locked] if score @s bs.in.0 = @e[limit=1,sort=nearest] bs.out.0 run scoreboard players add @s bs.plot.y 10
execute at @s as @e[tag=bs.sandbox.plot.random,tag=!bs.sandbox.plot.random.locked] if score @s bs.in.0 = @e[limit=1,sort=nearest] bs.out.0 run function bs.sandbox:math/plot/draw
