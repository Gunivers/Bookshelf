# TITLE: Accurate Sin
# PATH: Gunivers-Lib:Utils/MathAccurate/Sin

# AUTHOR: KubbyDev
# CONTRIBUTORS:
# - LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# Requirement:
# - Tmp1 (dummy)
# - Tmp2 (dummy)
# - Tmp3 (dummy)
# - Res (dummy)
# - Constant (dummy)

# INPUT:
# - Tmp1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Tmp1 must be in interval [0;360000]

# CONFIGURATION:

# CODE

# Retranscription of Tmp3 on interval [0;18000[

scoreboard players operation @s Tmp3 = @s Tmp1
scoreboard players operation @s Tmp3 /= 10 Constant
scoreboard players operation @s[score_Tmp3_min=18000] Tmp3 -= 18000 Constant

# Calcul Sin

scoreboard players operation @s Res = @s Tmp3
scoreboard players operation @s Res *= Neg Constant
scoreboard players operation @s Res += 18000 Constant
scoreboard players operation @s Res *= @s Tmp3
scoreboard players operation @s Res *= 4 Constant

scoreboard players operation @s Tmp2 = @s Tmp3
scoreboard players operation @s Tmp2 *= Neg Constant
scoreboard players operation @s Tmp2 += 18000 Constant
scoreboard players operation @s Tmp2 *= @s Tmp3
scoreboard players operation @s Tmp2 *= Neg Constant
scoreboard players operation @s Tmp2 += 405000000 Constant
scoreboard players operation @s Tmp2 /= 1000 Constant
scoreboard players operation @s Res /= @s Tmp2

scoreboard players operation @s[score_Tmp1_min=180000] Res *= Neg Constant
