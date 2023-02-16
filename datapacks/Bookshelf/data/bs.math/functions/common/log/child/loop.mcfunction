# S_p = 2 * sum(k from 0 to p)( y^(2k+1) / (2k+1) )
# In minecraft we don't have infinite accuracy so p is not definied,
# but we stop suming when the term is < 1

scoreboard players operation @s bs.res0 = @s bs.var2
scoreboard players operation @s bs.res0 /= @s bs.var1
scoreboard players operation @s bs.var5 += @s bs.res0
scoreboard players add @s bs.var1 2

# Calculation of y^(var2)
scoreboard players operation @s bs.var2 *= @s bs.var0
execute if entity @s[scores={bs.var2=1..}] run scoreboard players add @s bs.var2 5000
execute if entity @s[scores={bs.var2=..-1}] run scoreboard players remove @s bs.var2 5000
scoreboard players operation @s bs.var2 /= 10000 bs.const
scoreboard players operation @s bs.var2 *= @s bs.var0
execute if entity @s[scores={bs.var2=1..}] run scoreboard players add @s bs.var2 5000
execute if entity @s[scores={bs.var2=..-1}] run scoreboard players remove @s bs.var2 5000
scoreboard players operation @s bs.var2 /= 10000 bs.const

# If it is useful to continue
execute unless entity @s[scores={bs.res0=-1..1}] run function bs.math:common/log/child/loop
