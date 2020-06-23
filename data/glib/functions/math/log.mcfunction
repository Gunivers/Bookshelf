#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/log
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# - This function takes inputs in [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]). If you want log(0.5), input 500
# - The output values are scaled by 10 000. They are the exact result +- 0.002 (The maximum error is 0.0017, 90% of the errors are < 0.001)
# - Thanks to this guy for the formula used in this function: https://math.stackexchange.com/questions/977586/is-there-an-approximation-to-the-natural-log-function-at-large-values
# - If you input 0 the function returns log(0.001), if you input a negative value it returns log(-x)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.var8 dummy
scoreboard objectives add glib.res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Not defined values
scoreboard players set @s[scores={glib.var=0}] glib.var 1
scoreboard players operation @s[scores={glib.var=..-1}] glib.var *= -1 glib.const

# glib.var4 = x (* 1000)
scoreboard players operation @s glib.var4 = @s glib.var

# glib.var2 = n+2
execute if entity @s[scores={glib.var4=..1000}] run scoreboard players remove @s glib.var 1
scoreboard players set @s glib.var2 0
execute unless entity @s[scores={glib.var4=1}] run function glib:math/child/log-digits
execute if entity @s[scores={glib.var4=1001..}] run scoreboard players remove @s glib.var2 1

# glib.var7 = n-1
scoreboard players operation @s glib.var7 = @s glib.var2
scoreboard players remove @s glib.var7 3

# glib.res = 10^(n-1) (* 1000)
scoreboard players set @s glib.var 10
function glib:math/pow

# Calculation of y

# y = (a-1)/(a+1), a = x/10^(n-1) => y = (x-10^(n-1))/(x+10^(n-1))
# glib.var5 = y (* 10 000)
scoreboard players operation @s glib.var5 = @s glib.var4
scoreboard players operation @s glib.var5 -= @s glib.res
scoreboard players operation @s glib.var4 += @s glib.res
# We change the orders of magnitude to have the best possible accuracy
# Calculation of the multipliers
# glib.var8 = 10^(5-glib.var7)
# glib.var5 = 10^(glib.var7-1)
scoreboard players operation @s glib.var5 = @s glib.res
scoreboard players operation @s glib.var5 /= 10000 glib.const
scoreboard players set @s glib.var2 5
scoreboard players operation @s glib.var2 -= @s glib.var7
function glib:math/pow
scoreboard players set @s glib.var8 1
execute if entity @s[scores={glib.var7=6}] run scoreboard players operation @s glib.var5 /= 10 glib.const
execute unless entity @s[scores={glib.var7=5..6}] run scoreboard players operation @s glib.var8 = @s glib.res
# Modification of the orders of magnitude
scoreboard players operation @s glib.var5 *= @s glib.var8
execute if entity @s[scores={glib.var5=1..}] run scoreboard players add @s glib.var5 50000
execute if entity @s[scores={glib.var5=..-1}] run scoreboard players remove @s glib.var5 50000
scoreboard players operation @s glib.var8 /= 10000 glib.const
execute if entity @s[scores={glib.var7=..0}] run scoreboard players operation @s glib.var4 *= @s glib.var8
execute if entity @s[scores={glib.var7=2..}] run scoreboard players operation @s glib.var4 /= @s glib.var5
# Division of x-10^(n-1) by x+10^(n-1)
scoreboard players operation @s glib.var5 /= @s glib.var4
scoreboard players operation @s glib.var = @s glib.var5

# Calculation of Sp

# glib.var5 = Sp (* 10 000)
scoreboard players set @s glib.var2 1
scoreboard players set @s glib.var5 0
scoreboard players operation @s glib.var3 = @s glib.var
function glib:math/child/log-loop

# Last calculation
# log(x) ~ Sp + (n-1)*log(10)
scoreboard players operation @s glib.res = @s glib.var5
scoreboard players operation @s glib.res *= 2 glib.const
scoreboard players operation @s glib.var7 *= 2302585 glib.const
scoreboard players operation @s glib.var7 /= 100 glib.const
scoreboard players operation @s glib.res += @s glib.var7

# Small adjustment to increase average accuracy
scoreboard players add @s glib.res 7
