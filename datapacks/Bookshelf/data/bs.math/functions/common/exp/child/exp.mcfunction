scoreboard players operation @s bs.res0 += @s bs.var2
scoreboard players add @s bs.var1 1
scoreboard players operation @s bs.var2 /= @s bs.var1
scoreboard players operation @s bs.var2 *= @s bs.var0
scoreboard players operation @s bs.var2 /= 100 bs.const

execute unless entity @s[scores={bs.var2=0}] run function bs.math:common/exp/child/exp
