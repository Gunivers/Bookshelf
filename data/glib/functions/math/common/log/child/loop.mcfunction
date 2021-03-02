# S_p = 2 * sum(k from 0 to p)( y^(2k+1) / (2k+1) )
# In minecraft we don't have infinite accuracy so p is not definied,
# but we stop suming when the term is < 1

scoreboard players operation @s glib.res0 = @s glib.var2
scoreboard players operation @s glib.res0 /= @s glib.var1
scoreboard players operation @s glib.var4 += @s glib.res0
scoreboard players add @s glib.var1 2

# Calculation of y^(var2)
scoreboard players operation @s glib.var2 *= @s glib.var0
execute if entity @s[scores={glib.var2=1..}] run scoreboard players add @s glib.var2 5000
execute if entity @s[scores={glib.var2=..-1}] run scoreboard players remove @s glib.var2 5000
scoreboard players operation @s glib.var2 /= 10000 glib.const
scoreboard players operation @s glib.var2 *= @s glib.var0
execute if entity @s[scores={glib.var2=1..}] run scoreboard players add @s glib.var2 5000
execute if entity @s[scores={glib.var2=..-1}] run scoreboard players remove @s glib.var2 5000
scoreboard players operation @s glib.var2 /= 10000 glib.const

# If it is useful to continue
execute unless entity @s[scores={glib.res0=-1..1}] run function glib:math/common/log/child/loop
