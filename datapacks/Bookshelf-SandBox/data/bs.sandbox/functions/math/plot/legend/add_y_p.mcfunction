team join bs.plot.new @s
tag @s add bs.sandbox.plot
tag @s add bs.sandbox.plot.legend
tag @s add bs.sandbox.plot.legend.y_p
tag @s add bs.sandbox.plot.drawed
tag @s remove bs.sandbox.plot.legend.new

scoreboard players operation @s bs.locX = sandbox.plot.center.x bs.const
scoreboard players operation @s bs.locY = sandbox.plot.center.y bs.const
scoreboard players operation @s bs.locY += sandbox.plot.size.y bs.const
scoreboard players add @s bs.locY 1100
scoreboard players operation @s bs.locZ = sandbox.plot.center.z bs.const
scoreboard players remove @s bs.locZ 1000

function bs.location:fast_set/accuracy/10-3

execute at @s if entity @e[tag=bs.sandbox.plot.legend.y_p.up,distance=..0.3] run tag @s add bs.sandbox.plot.legend.y_p.next_down
execute at @s if entity @e[tag=bs.sandbox.plot.legend.y_p.up,distance=..0.3] as @e[tag=bs.sandbox.plot.legend.y_p.up] at @s run tp @s ~2 ~ ~
execute at @s if entity @e[tag=bs.sandbox.plot.legend.y_p.down,distance=..0.3] as @e[tag=bs.sandbox.plot.legend.y_p.down] at @s run tp @s ~-2 ~ ~

tag @s[tag=bs.sandbox.plot.legend.y_p.next_down] add bs.sandbox.plot.legend.y_p.down
tag @s[tag=!bs.sandbox.plot.legend.y_p.next_down] add bs.sandbox.plot.legend.y_p.up
tag @s[tag=bs.sandbox.plot.legend.y_p.next_down] remove bs.sandbox.plot.legend.y_p.next_down
