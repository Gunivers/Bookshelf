execute at @s run function glib.core:default_entity
execute at @s run tag @e[tag=glib.new,limit=1,sort=nearest] add glib.debug.draw_line
execute at @s run tag @e[tag=glib.new,limit=1,sort=nearest] remove glib.new

function glib.core:default_entity
tag @e[tag=glib.new,limit=1,sort=nearest] add glib.debug.draw_line.dest
tag @e[tag=glib.new,limit=1,sort=nearest] remove glib.new

execute as @e[tag=glib.debug.draw_line,limit=1,sort=nearest] at @s facing entity @e[tag=glib.debug.draw_line.dest,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~

execute as @e[tag=glib.debug.draw_line.dest] run function glib.health:safe_kill

scoreboard players set debug.draw_line glib 200
execute unless entity @e[tag=glib.debug.draw_line,distance=..0.5] as @e[tag=glib.debug.draw_line,limit=1,sort=nearest] run function glib.core:debug/draw/line_0.5/child/line_0.5

execute as @e[tag=glib.debug.draw_line,limit=1,sort=nearest] run function glib.health:safe_kill
