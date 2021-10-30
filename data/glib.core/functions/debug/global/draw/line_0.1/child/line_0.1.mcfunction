execute at @s run tp @s ^ ^ ^0.1
execute at @s run particle dust 0.008 0.541 0.949 0.2 ~ ~ ~ 0.2 0.2 0.2 0 0 normal

scoreboard players remove debug.draw_line glib 1

execute if entity @s[distance=..0.1] run kill @s[type=!player]
execute if score debug.draw_line glib.var0 matches ..0 run kill @s
execute as @s unless entity @s[distance=..0.1] run function glib.core:debug/global/draw/line_0.1/child/line_0.1
