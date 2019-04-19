# TITLE: Exp
# PATH: gunivers-lib:math/exp

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Var1 is the input of the function, multiplied by 100 to allow 2 digits (input 123 to calculate exp(1.23))
# - Res is multiplied by 1000 to allow 3 digits, but the function has a 3 digits accuracy only around 0
# - Var1 must be in interval ]-6 *100; 12 *100]
# - Thanks to this page for the formula used in this function https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/chap04/exp.html

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Res dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players set @s Res 1000
scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 *= 10 Constant
scoreboard players set @s Var2 1

function gunivers-lib:math/child/exp-loop