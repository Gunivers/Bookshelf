execute at @s run function bs.core:entity/summon
execute at @s run tag @e[tag=bs.new,limit=1,sort=nearest] add bs.debug.draw_line
execute at @s run tag @e[tag=bs.new,limit=1,sort=nearest] remove bs.new

function bs.core:entity/summon
tag @e[tag=bs.new,limit=1,sort=nearest] add bs.debug.draw_line.dest
tag @e[tag=bs.new,limit=1,sort=nearest] remove bs.new

execute as @e[tag=bs.debug.draw_line,limit=1,sort=nearest] at @s facing entity @e[tag=bs.debug.draw_line.dest,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~

execute as @e[tag=bs.debug.draw_line.dest] run function bs.core:entity/safe_kill

scoreboard players set debug.draw_line bs 200
execute unless entity @e[tag=bs.debug.draw_line,distance=..0.5] as @e[tag=bs.debug.draw_line,limit=1,sort=nearest] run function bs.core:debug/draw/line_1.0/child/line_1.0

execute as @e[tag=bs.debug.draw_line,limit=1,sort=nearest] run function bs.core:entity/safe_kill
