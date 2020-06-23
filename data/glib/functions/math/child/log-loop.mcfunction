# S_p = 2 * sum(k from 0 to p)( y^(2k+1) / (2k+1) )
# In minecraft we don't have infinite accuracy so p is not definied,
# but we stop suming when the term is < 1

scoreboard players operation @s glib.res = @s glib.var3
scoreboard players operation @s glib.res /= @s glib.var2
scoreboard players operation @s glib.var5 += @s glib.res
scoreboard players add @s glib.var2 2

# Calculation of y^(var2)
scoreboard players operation @s glib.var3 *= @s glib.var
execute if entity @s[scores={glib.var3=1..}] run scoreboard players add @s glib.var3 5000
execute if entity @s[scores={glib.var3=..-1}] run scoreboard players remove @s glib.var3 5000
scoreboard players operation @s glib.var3 /= 10000 glib.const
scoreboard players operation @s glib.var3 *= @s glib.var
execute if entity @s[scores={glib.var3=1..}] run scoreboard players add @s glib.var3 5000
execute if entity @s[scores={glib.var3=..-1}] run scoreboard players remove @s glib.var3 5000
scoreboard players operation @s glib.var3 /= 10000 glib.const

# If it is useful to continue
execute unless entity @s[scores={glib.res=-1..1}] run function glib:math/child/log-loop
