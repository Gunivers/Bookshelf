execute at @s run tp @s ^ ^ ^0.5
execute at @s run particle dust 0.008 0.541 0.949 0.2 ~ ~ ~ 0.2 0.2 0.2 0 0 normal

scoreboard players remove debug.draw_line bs 1

execute if entity @s[distance=..0.5] run kill @s[type=!player]
execute if score debug.draw_line bs.in.0 matches ..0 run kill @s
execute as @s unless entity @s[distance=..0.5] run function bs.core:debug/draw/line_0.5/child/line_0.5
