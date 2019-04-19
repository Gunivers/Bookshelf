# NAME: Log Loop
# PATH: gunivers-lib:math/child/log-loop
 
# CHILD OF: gunivers-lib:math/log

#CODE:
#____________________________________________________________________________________________________

# S_p = 2 * sum(k from 0 to p)( y^(2k+1) / (2k+1) )
# In minecraft we don't have infinite accuracy so p is not definied,
# but we stop suming when the term is < 1

scoreboard players operation @s Res = @s Var3
scoreboard players operation @s Res /= @s Var2
scoreboard players operation @s Var6 += @s Res
scoreboard players add @s Var2 2

# Calculation of y^(var2)
scoreboard players operation @s Var3 *= @s Var1
execute if entity @s[scores={Var3=1..}] run scoreboard players add @s Var3 5000
execute if entity @s[scores={Var3=..-1}] run scoreboard players remove @s Var3 5000
scoreboard players operation @s Var3 /= 10000 Constant   	
scoreboard players operation @s Var3 *= @s Var1
execute if entity @s[scores={Var3=1..}] run scoreboard players add @s Var3 5000
execute if entity @s[scores={Var3=..-1}] run scoreboard players remove @s Var3 5000
scoreboard players operation @s Var3 /= 10000 Constant

# If it is useful to continue
execute unless entity @s[scores={Res=-1..1}] run function gunivers-lib:math/child/log-loop
