scoreboard players operation @s glib.res *= @s glib.var2
scoreboard players remove @s glib.var2 1
execute if entity @s[scores={glib.var2=2..}] run function glib:math/child/factorial-loop
