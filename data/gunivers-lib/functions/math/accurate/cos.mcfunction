# TITLE: Accurate Cos
# PATH: Gunivers-Lib:Math/Accurate/Cos

# AUTHOR: KubbyDev
# CONTRIBUTORS:
# - LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13+

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Var1 must be in interval [0;360000]

# CONFIGURATION:

# CODE

# Retranscription of Var3 on interval [0;9000[

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 /= 10 Constant
scoreboard players operation @s[scores={Var1=90000..179999}] Var3 *= Neg Constant
scoreboard players operation @s[scores={Var1=90000..179999}] Var3 += 18000 Constant
scoreboard players operation @s[scores={Var1=180000..269999}] Var3 -= 18000 Constant
scoreboard players operation @s[scores={Var1=270000..}] Var3 *= Neg Constant
scoreboard players operation @s[scores={Var1=270000..}] Var3 += 36000 Constant

# Calcul Cos

scoreboard players operation @s Res = @s Var3
scoreboard players operation @s Res *= @s Res
scoreboard players operation @s Res *= 4 Constant
scoreboard players operation @s Res *= Neg Constant
scoreboard players operation @s Res += 324000000 Constant
scoreboard players operation @s Var2 = @s Var3
scoreboard players operation @s Var2 *= @s Var2
scoreboard players operation @s Var2 += 324000000 Constant
scoreboard players operation @s Var2 /= 1000 Constant
scoreboard players operation @s Res /= @s Var2

scoreboard players operation @s[scores={Var1=90000..269999}] Res *= Neg Constant