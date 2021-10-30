execute as @e[tag=glib.new] run function glib.health:safe_kill
function glib.core:default_entity
tp @e[tag=glib.new] @s
execute store result entity @e[tag=glib.new,limit=1] Pos[0] double 1 run scoreboard players get @s glib.locX
tp @s @e[tag=glib.new,limit=1]
execute as @e[tag=glib.new] run function glib.health:safe_kill
