# TITLE: Accurate Sin
# PATH: gunivers-lib:math/advanced/sin

# AUTHOR: KubbyDev
# CONTRIBUTORS:
# - LeiRoF

# VERSION: 1.1
# MINECRAFT: 1.13.X

# Requirement:
# - Vars (Module)
# - Math (Module) 
# - Constants (Module)

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Var1 must be in interval [0;360000]

# CONFIGURATION:

# CODE

# Retranscription of Var3 on interval [0;18000[

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 /= 10 Constant
scoreboard players operation @s[scores={Var3=18000..}] Var3 -= 18000 Constant

# Calcul Sin

scoreboard players operation @s Res = @s Var3
scoreboard players operation @s Res *= Neg Constant
scoreboard players operation @s Res += 18000 Constant
scoreboard players operation @s Res *= @s Var3
scoreboard players operation @s Res *= 4 Constant

scoreboard players operation @s Var2 = @s Var3
scoreboard players operation @s Var2 *= Neg Constant
scoreboard players operation @s Var2 += 18000 Constant
scoreboard players operation @s Var2 *= @s Var3
scoreboard players operation @s Var2 *= Neg Constant
scoreboard players operation @s Var2 += 405000000 Constant
scoreboard players operation @s Var2 /= 1000 Constant
scoreboard players operation @s Res /= @s Var2

scoreboard players operation @s[scores={Var1=180000..}] Res *= Neg Constant
