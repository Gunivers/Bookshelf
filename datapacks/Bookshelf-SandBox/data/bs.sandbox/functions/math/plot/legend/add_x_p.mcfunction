team join bs.plot.new @s
tag @s add bs.sandbox.plot
tag @s add bs.sandbox.plot.legend
tag @s add bs.sandbox.plot.legend.x_p
tag @s add bs.sandbox.plot.drawed
tag @s remove bs.sandbox.plot.legend.new

scoreboard players operation @s bs.locX = sandbox.plot.center.x bs.const
scoreboard players operation @s bs.locX -= sandbox.plot.size.x bs.const
scoreboard players remove @s bs.locX 500
scoreboard players operation @s bs.locY = sandbox.plot.center.y bs.const
scoreboard players add @s bs.locY 600
scoreboard players operation @s bs.locZ = sandbox.plot.center.z bs.const
scoreboard players remove @s bs.locZ 1000

function bs.location:fast_set/accuracy/10-3

execute at @s if entity @e[tag=bs.sandbox.plot.legend.x_p.up,distance=..0.3] run tag @s add bs.sandbox.plot.legend.x_p.next_down
execute at @s if entity @e[tag=bs.sandbox.plot.legend.x_p.up,distance=..0.3] as @e[tag=bs.sandbox.plot.legend.x_p.up] at @s run tp @s ~ ~1 ~
execute at @s if entity @e[tag=bs.sandbox.plot.legend.x_p.down,distance=..0.3] as @e[tag=bs.sandbox.plot.legend.x_p.down] at @s run tp @s ~ ~-1 ~

tag @s[tag=bs.sandbox.plot.legend.x_p.next_down] add bs.sandbox.plot.legend.x_p.down
tag @s[tag=!bs.sandbox.plot.legend.x_p.next_down] add bs.sandbox.plot.legend.x_p.up
tag @s[tag=bs.sandbox.plot.legend.x_p.next_down] remove bs.sandbox.plot.legend.x_p.next_down
