#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:log
# Documentation: https://bs-core.readthedocs.io//math
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

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Not defined values
scoreboard players set @s[scores={bs.in.0=0}] bs.in.0 1
scoreboard players operation @s[scores={bs.in.0=..-1}] bs.in.0 *= -1 bs.const

# bs.in.3 = x (* 1000)
scoreboard players operation @s bs.in.3 = @s bs.in.0 

# bs.in.1 = n+2
execute if entity @s[scores={bs.in.3=..1000}] run scoreboard players remove @s bs.in.0 1
scoreboard players set @s bs.in.1 0
execute unless entity @s[scores={bs.in.3=1}] run function bs.math:common/log/child/digits
execute if entity @s[scores={bs.in.3=1001..}] run scoreboard players remove @s bs.in.1 1

# bs.in.6 = n-1
scoreboard players operation @s bs.in.6 = @s bs.in.1
scoreboard players remove @s bs.in.6 3

# bs.out.0 = 10^(n-1) (* 1000)
scoreboard players set @s bs.in.0 10
function bs.math:common/pow

# Calculation of y

# y = (a-1)/(a+1), a = x/10^(n-1) => y = (x-10^(n-1))/(x+10^(n-1))
# bs.in.4 = y (* 10 000)
scoreboard players operation @s bs.in.4 = @s bs.in.3
scoreboard players operation @s bs.in.4 -= @s bs.out.0
scoreboard players operation @s bs.in.3 += @s bs.out.0
# We change the orders of magnitude to have the best possible accuracy
# Calculation of the multipliers
# bs.in.7 = 10^(5-bs.in.6)
# bs.in.5 = 10^(bs.in.6-1)
scoreboard players operation @s bs.in.5 = @s bs.out.0
scoreboard players operation @s bs.in.5 /= 10000 bs.const
scoreboard players set @s bs.in.1 5
scoreboard players operation @s bs.in.1 -= @s bs.in.6
function bs.math:common/pow
scoreboard players set @s bs.in.7 1
execute if entity @s[scores={bs.in.6=6}] run scoreboard players operation @s bs.in.4 /= 10 bs.const
execute unless entity @s[scores={bs.in.6=5..6}] run scoreboard players operation @s bs.in.7 = @s bs.out.0
# Modification of the orders of magnitude
scoreboard players operation @s bs.in.4 *= @s bs.in.7
execute if entity @s[scores={bs.in.4=1..}] run scoreboard players add @s bs.in.4 50000
execute if entity @s[scores={bs.in.4=..-1}] run scoreboard players remove @s bs.in.4 50000
scoreboard players operation @s bs.in.7 /= 10000 bs.const
execute if entity @s[scores={bs.in.6=..0}] run scoreboard players operation @s bs.in.3 *= @s bs.in.7
execute if entity @s[scores={bs.in.6=2..}] run scoreboard players operation @s bs.in.3 /= @s bs.in.5
# Division of x-10^(n-1) by x+10^(n-1)
scoreboard players operation @s bs.in.4 /= @s bs.in.3
scoreboard players operation @s bs.in.0 = @s bs.in.4

# Calculation of Sp

# bs.in.5 = Sp (* 10 000)
scoreboard players set @s bs.in.1 1
scoreboard players set @s bs.in.5 0
scoreboard players operation @s bs.in.2 = @s bs.in.0
function bs.math:common/log/child/loop

# Last calculation
# log(x) ~ Sp + (n-1)*log(10)
scoreboard players operation @s bs.out.0 = @s bs.in.5
scoreboard players operation @s bs.out.0 *= 2 bs.const
scoreboard players operation @s bs.in.6 *= 2302585 bs.const
scoreboard players operation @s bs.in.6 /= 100 bs.const
scoreboard players operation @s bs.out.0 += @s bs.in.6

# Small adjustment to increase average accuracy
scoreboard players add @s bs.out.0 7
scoreboard players operation @s bs.out.0 /= 10 bs.const