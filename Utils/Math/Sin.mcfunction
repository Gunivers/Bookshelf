# Cos

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Tmp1 (dummy)
# - Tmp2 (dummy)
# - Tmp3 (dummy)
# - Res (dummy)
# - Constant (dummy)

# Input values:
# - Tmp1 (score dummy)

# Output values:
# - Res (score dummy)

#Note: Tmp1 must be in interval [0;360]


# Retranscription of Tmp1 on interval [0;180[

scoreboard players operation @s Tmp3 = @s Tmp1
scoreboard players operation @s[score_Tmp1_min=180] Tmp3 -= 180 Constant

# Calcul Sin

scoreboard players operation @s Res = @s Tmp3
scoreboard players operation @s Res *= Neg Constant
scoreboard players operation @s Res += 180 Constant
scoreboard players operation @s Res *= @s Tmp3
scoreboard players operation @s Res *= 4 Constant
scoreboard players operation @s Res *= 1000 Constant

scoreboard players operation @s Tmp2 = @s Tmp3
scoreboard players operation @s Tmp2 *= Neg Constant
scoreboard players operation @s Tmp2 += 180 Constant
scoreboard players operation @s Tmp2 *= @s Tmp3
scoreboard players operation @s Tmp2 *= Neg Constant
scoreboard players operation @s Tmp2 += 40500 Constant
scoreboard players operation @s Res /= @s Tmp2

scoreboard players operation @s[score_Tmp1_min=180] Res *= Neg Constant
