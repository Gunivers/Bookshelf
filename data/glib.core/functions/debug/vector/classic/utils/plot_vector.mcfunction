
execute at @s run function glib.core:default_entity
tag @e[tag=glib.new,limit=1,sort=nearest] add glib.debug.plot_vector
tag @e[tag=glib.new,limit=1,sort=nearest] remove glib.new

execute as @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run function glib.location:get/accuracy/10-3

execute as @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run scoreboard players operation @s glib.var0 = @s glib.locX
execute as @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run scoreboard players operation @s glib.var1 = @s glib.locY
execute as @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run scoreboard players operation @s glib.var2 = @s glib.locZ
scoreboard players operation @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] glib.var0 += @s glib.var0
scoreboard players operation @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] glib.var1 += @s glib.var1
scoreboard players operation @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] glib.var2 += @s glib.var2

execute as @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run function glib.location:set/accuracy/10-3

execute at @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run function glib.core:debug/global/draw/line_0.1_ata

scoreboard players reset @e[tag=glib.debug.plot_vector,limit=1,sort=nearest,type=!player]
execute as @e[tag=glib.debug.plot_vector] run function glib.health:safe_kill
