function glib.core:default_entity

tag @e[tag=glib.new,limit=1,sort=nearest] add glib.link.debug.display

scoreboard players operation @e[tag=glib.new,tag=glib.link.debug.display] glib.vectorX = @s glib.link.rx
scoreboard players operation @e[tag=glib.new,tag=glib.link.debug.display] glib.vectorY = @s glib.link.ry
scoreboard players operation @e[tag=glib.new,tag=glib.link.debug.display] glib.vectorZ = @s glib.link.rz

scoreboard players operation @e[tag=glib.new,tag=glib.link.debug.display] glib.vectorX /= 10 glib.const
scoreboard players operation @e[tag=glib.new,tag=glib.link.debug.display] glib.vectorY /= 10 glib.const
scoreboard players operation @e[tag=glib.new,tag=glib.link.debug.display] glib.vectorZ /= 10 glib.const

scoreboard players set @e[tag=glib.new,tag=glib.link.debug.display] glib.lifetime -11

tag @e[tag=glib.link.debug.display] remove glib.new

execute as @e[tag=glib.link.debug.display] run function glib.move:by_vector
execute as @e[tag=glib.link.debug.display] at @s run particle dust 0.196 0.588 0.980 0.3 ~ ~ ~