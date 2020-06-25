scoreboard players operation @s glib.res0 += @s glib.var2
scoreboard players add @s glib.var1 1
scoreboard players operation @s glib.var2 /= @s glib.var1
scoreboard players operation @s glib.var2 *= @s glib.var0
scoreboard players operation @s glib.var2 /= 100 glib.const

execute unless entity @s[scores={glib.var2=0}] run function glib_child:math/exp-loop
