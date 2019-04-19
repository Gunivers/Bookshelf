#AUTHOR: KubbyDev
#PATH: gunivers-lib:math/log2

#NAME: Log (Base 2)

#VERSION: 1.0
#MINECRAFT: 1.13.X

#INPUT: 
# - Var1 (the input *10 ^ 3)

#OUTPUT:
# - Res (the output *10 ^ 4)

#NOTE:
# - This function takes inputs in [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]). If you want log2(0.5), input 500
# - The output values are scaled by 10 000. They are the exact result +- 0.003 (The maximum error is 0.0029)
# - If you input 0 the function returns log(0.001), if you input a negative value it returns log(-x)

#CODE:
#____________________________________________________________________________________________________

function gunivers-lib:math/log
scoreboard players operation @s Res *= 10000 Constant
scoreboard players operation @s Res /= 6931 Constant