scoreboard players operation @s bs.res0 *= @s bs.var0
scoreboard players operation @s bs.res0 /= 1000 bs.const
scoreboard players remove @s bs.var2 1

execute if entity @s[scores={bs.var2=2..}] run function bs.math:common/pow/scale/3/child/loop
