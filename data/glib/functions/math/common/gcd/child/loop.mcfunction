scoreboard players operation @s glib.var2 %= @s glib.res0

tag @s[scores={glib.var2=0}] add PGCDfound

scoreboard players operation @s[tag=!PGCDfound] glib.var3 = @s glib.res0
scoreboard players operation @s[tag=!PGCDfound] glib.res0 = @s glib.var2
scoreboard players operation @s[tag=!PGCDfound] glib.var2 = @s glib.var3

execute at @s[tag=!PGCDfound] run function glib:math/common/gcd/child/loop
