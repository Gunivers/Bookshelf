scoreboard players operation @s glib.res0 *= @s glib.var0
scoreboard players remove @s glib.var2 1

execute if entity @s[scores={glib.var2=2..}] run function glib_child:math/pow-loop
