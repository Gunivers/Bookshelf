scoreboard players operation @s glib.var3 %= @s glib.res

tag @s[scores={glib.var3=0}] add PGCDfound

scoreboard players operation @s[tag=!PGCDfound] glib.var4 = @s glib.res
scoreboard players operation @s[tag=!PGCDfound] glib.res = @s glib.var3
scoreboard players operation @s[tag=!PGCDfound] glib.var3 = @s glib.var4

execute at @s[tag=!PGCDfound] run function glib:math/child/gcd-loop
