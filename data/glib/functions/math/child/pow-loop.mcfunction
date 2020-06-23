scoreboard players operation @s glib.res *= @s glib.var
scoreboard players remove @s glib.var3 1

execute if entity @s[scores={glib.var3=2..}] run function glib:math/child/pow-loop
