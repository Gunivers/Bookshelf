execute as @e[tag=glib.new] run function glib:health/safe_kill
function gutils:default_entity
tp @e[tag=glib.new] @s
execute store result entity @e[tag=glib.new,limit=1] Pos[2] double 1 run scoreboard players get @s glib.locZ
tp @s @e[tag=glib.new,limit=1]
execute as @e[tag=glib.new] run function glib:health/safe_kill
