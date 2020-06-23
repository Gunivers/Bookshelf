scoreboard players operation @s glib.res += @s glib.var3
scoreboard players add @s glib.var2 1
scoreboard players operation @s glib.var3 /= @s glib.var2
scoreboard players operation @s glib.var3 *= @s glib.var
scoreboard players operation @s glib.var3 /= 100 glib.const

execute unless entity @s[scores={glib.var3=0}] run function glib:math/child/exp-loop
