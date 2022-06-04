team join glib.plot.new @s
tag @s add glib.sandbox.plot
tag @s add glib.sandbox.plot.legend
tag @s add glib.sandbox.plot.legend.y_p
tag @s add glib.sandbox.plot.drawed
tag @s remove glib.sandbox.plot.legend.new

scoreboard players operation @s glib.locX = sandbox.plot.center.x glib.const
scoreboard players operation @s glib.locY = sandbox.plot.center.y glib.const
scoreboard players operation @s glib.locY += sandbox.plot.size.y glib.const
scoreboard players add @s glib.locY 1100
scoreboard players operation @s glib.locZ = sandbox.plot.center.z glib.const
scoreboard players remove @s glib.locZ 1000

function glib.location:fast_set/accuracy/10-3

execute at @s if entity @e[tag=glib.sandbox.plot.legend.y_p.up,distance=..0.3] run tag @s add glib.sandbox.plot.legend.y_p.next_down
execute at @s if entity @e[tag=glib.sandbox.plot.legend.y_p.up,distance=..0.3] as @e[tag=glib.sandbox.plot.legend.y_p.up] at @s run tp @s ~2 ~ ~
execute at @s if entity @e[tag=glib.sandbox.plot.legend.y_p.down,distance=..0.3] as @e[tag=glib.sandbox.plot.legend.y_p.down] at @s run tp @s ~-2 ~ ~

tag @s[tag=glib.sandbox.plot.legend.y_p.next_down] add glib.sandbox.plot.legend.y_p.down
tag @s[tag=!glib.sandbox.plot.legend.y_p.next_down] add glib.sandbox.plot.legend.y_p.up
tag @s[tag=glib.sandbox.plot.legend.y_p.next_down] remove glib.sandbox.plot.legend.y_p.next_down
