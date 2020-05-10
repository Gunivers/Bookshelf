tp @s ^ ^ ^0.5
scoreboard players remove @s Var1 1
particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @s if block ~ ~ ~ #glib:no_collision run function glib:entity/view/child/can_see-loop
