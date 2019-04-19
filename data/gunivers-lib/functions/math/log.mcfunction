#AUTHOR: KubbyDev
#PATH: gunivers-lib:math/log

#NAME: Log (natural log)

#VERSION: 1.0
#MINECRAFT: 1.13.X

#INPUT: 
# - Var1 (the input *10 ^ 3)

#OUTPUT:
# - Res (the output *10 ^ 4)

#NOTE:
# - This function takes inputs in [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]). If you want log(0.5), input 500
# - The output values are scaled by 10 000. They are the exact result +- 0.002 (The maximum error is 0.0017, 90% of the errors are < 0.001)
# - Thanks to this guy for the formula used in this function: https://math.stackexchange.com/questions/977586/is-there-an-approximation-to-the-natural-log-function-at-large-values
# - If you input 0 the function returns log(0.001), if you input a negative value it returns log(-x)

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Var6 dummy
scoreboard objectives add Var7 dummy
scoreboard objectives add Var8 dummy
scoreboard objectives add Res dummy

#CODE:
#____________________________________________________________________________________________________

# Not defined values
scoreboard players set @s[scores={Var1=0}] Var1 1
scoreboard players operation @s[scores={Var1=..-1}] Var1 *= -1 Constant  	

# Var4 = x (* 1000)
scoreboard players operation @s Var4 = @s Var1 

# Var2 = n+2
execute if entity @s[scores={Var4=..1000}] run scoreboard players remove @s Var1 1  	
scoreboard players set @s Var2 0
execute unless entity @s[scores={Var4=1}] run function gunivers-lib:math/child/log-digits
execute if entity @s[scores={Var4=1001..}] run scoreboard players remove @s Var2 1

# Var7 = n-1
scoreboard players operation @s Var7 = @s Var2
scoreboard players remove @s Var7 3

# Res = 10^(n-1) (* 1000)
scoreboard players set @s Var1 10
function gunivers-lib:math/pow

# Calculation of y

# y = (a-1)/(a+1), a = x/10^(n-1) => y = (x-10^(n-1))/(x+10^(n-1))
# Var5 = y (* 10 000)
scoreboard players operation @s Var5 = @s Var4
scoreboard players operation @s Var5 -= @s Res
scoreboard players operation @s Var4 += @s Res
# We change the orders of magnitude to have the best possible accuracy
# Calculation of the multipliers
# Var8 = 10^(5-Var7)
# Var6 = 10^(Var7-1)
scoreboard players operation @s Var6 = @s Res
scoreboard players operation @s Var6 /= 10000 Constant
scoreboard players set @s Var2 5
scoreboard players operation @s Var2 -= @s Var7
function gunivers-lib:math/pow
scoreboard players set @s Var8 1
execute if entity @s[scores={Var7=6}] run scoreboard players operation @s Var5 /= 10 Constant
execute unless entity @s[scores={Var7=5..6}] run scoreboard players operation @s Var8 = @s Res
# Modification of the orders of magnitude
scoreboard players operation @s Var5 *= @s Var8
execute if entity @s[scores={Var5=1..}] run scoreboard players add @s Var5 50000
execute if entity @s[scores={Var5=..-1}] run scoreboard players remove @s Var5 50000
scoreboard players operation @s Var8 /= 10000 Constant
execute if entity @s[scores={Var7=..0}] run scoreboard players operation @s Var4 *= @s Var8
execute if entity @s[scores={Var7=2..}] run scoreboard players operation @s Var4 /= @s Var6
# Division of x-10^(n-1) by x+10^(n-1)
scoreboard players operation @s Var5 /= @s Var4
scoreboard players operation @s Var1 = @s Var5

# Calculation of Sp

# Var6 = Sp (* 10 000)
scoreboard players set @s Var2 1
scoreboard players set @s Var6 0
scoreboard players operation @s Var3 = @s Var1
function gunivers-lib:math/child/log-loop

# Last calculation
# log(x) ~ Sp + (n-1)*log(10)
scoreboard players operation @s Res = @s Var6
scoreboard players operation @s Res *= 2 Constant
scoreboard players operation @s Var7 *= 2302585 Constant
scoreboard players operation @s Var7 /= 100 Constant
scoreboard players operation @s Res += @s Var7

# Small adjustment to increase average accuracy
scoreboard players add @s Res 7



