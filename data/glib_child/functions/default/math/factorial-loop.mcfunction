scoreboard players operation @s glib.res0 *= @s glib.var1
scoreboard players remove @s glib.var1 1
execute if entity @s[scores={glib.var1=2..}] run function glib_child:default/math/factorial-loop
