#AUTHOR: KubbyDev
#PATH: gunivers-lib:math/loga

#NAME: Log (Base a)

#VERSION: 1.0
#MINECRAFT: 1.13.X

#INPUT: 
# - Var1 (the input *10 ^ 3)
# - Var2 (the base  *10 ^ 3)

#OUTPUT:
# - Res (the output *10 ^ 4)

#NOTE:
# - This function takes inputs in [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]).
# - The output values are scaled by 10 000. The accuracy depends on the base. If the base is close to 1
# - If you input var1 = 0 the function returns log_a(0.001), if you input a negative value it returns log_a(-x)
# - If you input var2 = 0 the function returns log_0.001(x), if you input a negative value it returns log_(-a)(x)
# - The base a must be in interval [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]). If you want log_8(0.5), input var1 = 500, var2 = 8000
# - if you input var2 = 1000 (corresponds to 1), the function will return non sense values because log_1(x) is not definied


# INIT:
scoreboard objectives add Var9 dummy

#CODE:
#____________________________________________________________________________________________________

# We save the x to calculate log x later, and calculate log a
scoreboard players operation @s Var9 = @s Var1
scoreboard players operation @s Var1 = @s Var2
function gunivers-lib:math/log

# We save log a on Var9
scoreboard players operation @s Var1 = @s Var9
scoreboard players operation @s Var9 = @s Res

# Then we calculate log x
function gunivers-lib:math/log
scoreboard players operation @s Res *= 10000 Constant

# And divide by log a
scoreboard players operation @s Res /= @s Var9