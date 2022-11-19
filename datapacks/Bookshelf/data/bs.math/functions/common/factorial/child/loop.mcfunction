scoreboard players operation @s bs.res0 *= @s bs.var1
scoreboard players remove @s bs.var1 1
execute if entity @s[scores={bs.var1=2..}] run function bs.math:common/factorial/child/loop
