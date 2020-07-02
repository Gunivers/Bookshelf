
execute at @s run function glib_config:default_entity
tag @e[tag=glib.new,limit=1,sort=nearest] add glib.debug.plot_vector
tag @e[tag=glib.new,limit=1,sort=nearest] remove glib.new

execute as @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run function glib_accuracy:10-3/location/get

execute as @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run scoreboard players operation @s glib.var0 = @s glib.res0
execute as @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run scoreboard players operation @s glib.var1 = @s glib.res1
execute as @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run scoreboard players operation @s glib.var2 = @s glib.res2
scoreboard players operation @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] glib.var0 += @s glib.var0
scoreboard players operation @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] glib.var1 += @s glib.var1
scoreboard players operation @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] glib.var2 += @s glib.var2

execute as @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run function glib_accuracy:10-3/location/set

execute at @e[tag=glib.debug.plot_vector,limit=1,sort=nearest] run function glib_debug:global/draw/line_0.1_ata

kill @e[tag=glib.debug.plot_vector,limit=1,sort=nearest,type=!player]
