scoreboard players operation @s bs.res0 = @s bs.var0
scoreboard players operation @s bs.var2 = @s bs.var1

execute if entity @s[scores={bs.var2=0}] run scoreboard players set @s bs.res0 1
execute if entity @s[scores={bs.var2=2..}] run function bs.math:common/pow/scale/3/child/loop
