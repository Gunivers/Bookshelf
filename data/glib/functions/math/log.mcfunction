#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/log
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note:
# - This function takes inputs in [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]). If you want log(0.5), input 500
# - The output values are scaled by 10 000. They are the exact result +- 0.002 (The maximum error is 0.0017, 90% of the errors are < 0.001)
# - Thanks to this guy for the formula used in this function: https://math.stackexchange.com/questions/977586/is-there-an-approximation-to-the-natural-log-function-at-large-values
# - If you input 0 the function returns log(0.001), if you input a negative value it returns log(-x)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var6 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.res0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Not defined values
scoreboard players set @s[scores={glib.var0=0}] glib.var0 1
scoreboard players operation @s[scores={glib.var0=..-1}] glib.var0 *= -1 glib.const

# glib.var3 = x (* 1000)
scoreboard players operation @s glib.var3 = @s glib.var0

# glib.var1 = n+2
execute if entity @s[scores={glib.var3=..1000}] run scoreboard players remove @s glib.var0 1
scoreboard players set @s glib.var1 0
execute unless entity @s[scores={glib.var3=1}] run function glib_child:math/log-digits
execute if entity @s[scores={glib.var3=1001..}] run scoreboard players remove @s glib.var1 1

# glib.var6 = n-1
scoreboard players operation @s glib.var6 = @s glib.var1
scoreboard players remove @s glib.var6 3

# glib.res0 = 10^(n-1) (* 1000)
scoreboard players set @s glib.var0 10
function glib:math/pow

# Calculation of y

# y = (a-1)/(a+1), a = x/10^(n-1) => y = (x-10^(n-1))/(x+10^(n-1))
# glib.var4 = y (* 10 000)
scoreboard players operation @s glib.var4 = @s glib.var3
scoreboard players operation @s glib.var4 -= @s glib.res0
scoreboard players operation @s glib.var3 += @s glib.res0
# We change the orders of magnitude to have the best possible accuracy
# Calculation of the multipliers
# glib.var7 = 10^(5-glib.var6)
# glib.var4 = 10^(glib.var6-1)
scoreboard players operation @s glib.var4 = @s glib.res0
scoreboard players operation @s glib.var4 /= 10000 glib.const
scoreboard players set @s glib.var1 5
scoreboard players operation @s glib.var1 -= @s glib.var6
function glib:math/pow
scoreboard players set @s glib.var7 1
execute if entity @s[scores={glib.var6=6}] run scoreboard players operation @s glib.var4 /= 10 glib.const
execute unless entity @s[scores={glib.var6=5..6}] run scoreboard players operation @s glib.var7 = @s glib.res0
# Modification of the orders of magnitude
scoreboard players operation @s glib.var4 *= @s glib.var7
execute if entity @s[scores={glib.var4=1..}] run scoreboard players add @s glib.var4 50000
execute if entity @s[scores={glib.var4=..-1}] run scoreboard players remove @s glib.var4 50000
scoreboard players operation @s glib.var7 /= 10000 glib.const
execute if entity @s[scores={glib.var6=..0}] run scoreboard players operation @s glib.var3 *= @s glib.var7
execute if entity @s[scores={glib.var6=2..}] run scoreboard players operation @s glib.var3 /= @s glib.var4
# Division of x-10^(n-1) by x+10^(n-1)
scoreboard players operation @s glib.var4 /= @s glib.var3
scoreboard players operation @s glib.var0 = @s glib.var4

# Calculation of Sp

# glib.var4 = Sp (* 10 000)
scoreboard players set @s glib.var1 1
scoreboard players set @s glib.var4 0
scoreboard players operation @s glib.var2 = @s glib.var0
function glib_child:math/log-loop

# Last calculation
# log(x) ~ Sp + (n-1)*log(10)
scoreboard players operation @s glib.res0 = @s glib.var4
scoreboard players operation @s glib.res0 *= 2 glib.const
scoreboard players operation @s glib.var6 *= 2302585 glib.const
scoreboard players operation @s glib.var6 /= 100 glib.const
scoreboard players operation @s glib.res0 += @s glib.var6

# Small adjustment to increase average accuracy
scoreboard players add @s glib.res0 7
