scoreboard players operation @s Var3 %= @s Res

tag @s[scores={Var3=0}] add PGCDfound

scoreboard players operation @s[tag=!PGCDfound] Var4 = @s Res
scoreboard players operation @s[tag=!PGCDfound] Res = @s Var3
scoreboard players operation @s[tag=!PGCDfound] Var3 = @s Var4

execute at @s[tag=!PGCDfound] run function glib:math/child/gcd-loop
