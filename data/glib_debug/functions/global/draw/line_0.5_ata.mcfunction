execute at @s run function glib_config:default_entity
execute at @s run tag @e[tag=glib.new,limit=1,sort=nearest] add glib.debug.draw_line
execute at @s run tag @e[tag=glib.new,limit=1,sort=nearest] remove glib.new

function glib_config:default_entity
tag @e[tag=glib.new,limit=1,sort=nearest] add glib.debug.draw_line.dest
tag @e[tag=glib.new,limit=1,sort=nearest] remove glib.new

execute as @e[tag=glib.debug.draw_line,limit=1,sort=nearest] at @s facing entity @e[tag=glib.debug.draw_line.dest,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~

kill @e[tag=glib.debug.draw_line.dest,type=!player]

scoreboard players set debug.draw_line glib.var0 200
execute unless entity @e[tag=glib.debug.draw_line,distance=..0.5] as @e[tag=glib.debug.draw_line,limit=1,sort=nearest] run function glib_child:debug/global/draw/line_0.5
kill @e[tag=glib.debug.draw_line,limit=1,sort=nearest]
