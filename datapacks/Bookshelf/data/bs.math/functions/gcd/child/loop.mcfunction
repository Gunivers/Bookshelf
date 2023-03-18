scoreboard players operation @s bs.in.2 %= @s bs.out.0

tag @s[scores={bs.in.2=0}] add PGCDfound

scoreboard players operation @s[tag=!PGCDfound] bs.in.3 = @s bs.out.0
scoreboard players operation @s[tag=!PGCDfound] bs.out.0 = @s bs.in.2
scoreboard players operation @s[tag=!PGCDfound] bs.in.2 = @s bs.in.3

execute at @s[tag=!PGCDfound] run function bs.math:gcd/child/loop
