# S_p = 2 * sum(k from 0 to p)( y^(2k+1) / (2k+1) )
# In minecraft we don't have infinite accuracy so p is not definied,
# but we stop suming when the term is < 1

scoreboard players operation @s bs.out.0 = @s bs.in.2
scoreboard players operation @s bs.out.0 /= @s bs.in.1
scoreboard players operation @s bs.in.5 += @s bs.out.0
scoreboard players add @s bs.in.1 2

# Calculation of y^(var2)
scoreboard players operation @s bs.in.2 *= @s bs.in.0
execute if entity @s[scores={bs.in.2=1..}] run scoreboard players add @s bs.in.2 5000
execute if entity @s[scores={bs.in.2=..-1}] run scoreboard players remove @s bs.in.2 5000
scoreboard players operation @s bs.in.2 /= 10000 bs.const
scoreboard players operation @s bs.in.2 *= @s bs.in.0
execute if entity @s[scores={bs.in.2=1..}] run scoreboard players add @s bs.in.2 5000
execute if entity @s[scores={bs.in.2=..-1}] run scoreboard players remove @s bs.in.2 5000
scoreboard players operation @s bs.in.2 /= 10000 bs.const

# If it is useful to continue
execute unless entity @s[scores={bs.out.0=-1..1}] run function bs.math:log/child/loop
