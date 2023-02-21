scoreboard players operation @s bs.out.0 += @s bs.in.2
scoreboard players add @s bs.in.1 1
scoreboard players operation @s bs.in.2 /= @s bs.in.1
scoreboard players operation @s bs.in.2 *= @s bs.in.0
scoreboard players operation @s bs.in.2 /= 100 bs.const

execute unless entity @s[scores={bs.in.2=0}] run function bs.math:common/exp/child/exp
