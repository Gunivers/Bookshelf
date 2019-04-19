# TITLE: Sin
# PATH: gunivers-lib:math/sin

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13.X

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Var1 must be in interval [0;360]
# - The result is rounded 10^-3

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Res dummy

# CODE:
#____________________________________________________________________________________________________


# Convert to angle [-90;90]

scoreboard players operation @s Var1 += 90 Constant
scoreboard players operation @s[scores={Var1=..-1}] Var1 *= Neg Constant
scoreboard players operation @s[scores={Var1=360..}] Var1 %= 180 Constant
scoreboard players operation @s Var1 -= 90 Constant

# Retranscription of Var1 on interval [0;180[

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s[scores={Var1=..-1}] Var3 *= Neg Constant

# Calcul Sin

scoreboard players operation @s Res = @s Var3
scoreboard players operation @s Res *= Neg Constant
scoreboard players operation @s Res += 180 Constant
scoreboard players operation @s Res *= @s Var3
scoreboard players operation @s Res *= 4 Constant
scoreboard players operation @s Res *= 1000 Constant

scoreboard players operation @s Var2 = @s Var3
scoreboard players operation @s Var2 *= Neg Constant
scoreboard players operation @s Var2 += 180 Constant
scoreboard players operation @s Var2 *= @s Var3
scoreboard players operation @s Var2 *= Neg Constant
scoreboard players operation @s Var2 += 40500 Constant
scoreboard players operation @s Res /= @s Var2

scoreboard players operation @s[scores={Var1=..-1}] Res *= Neg Constant