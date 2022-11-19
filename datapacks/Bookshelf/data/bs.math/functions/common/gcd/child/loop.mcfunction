scoreboard players operation @s bs.var2 %= @s bs.res0

tag @s[scores={bs.var2=0}] add PGCDfound

scoreboard players operation @s[tag=!PGCDfound] bs.var3 = @s bs.res0
scoreboard players operation @s[tag=!PGCDfound] bs.res0 = @s bs.var2
scoreboard players operation @s[tag=!PGCDfound] bs.var2 = @s bs.var3

execute at @s[tag=!PGCDfound] run function bs.math:common/gcd/child/loop
