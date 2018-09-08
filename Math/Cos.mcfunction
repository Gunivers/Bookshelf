# NAME: Cosinus
# PATH: Gunivers-Lib:Math/Cos
 
# AUTHOR: LeiRoF
 
# VERSION: 1.0
# MINECRAFT: 1.12 
 
# REQUIREMENTS: 
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Math (Import file) 
# - Gunivers-Lib:Utils/Import/Constant(Import file)

# INPUT: 
# - Tmp1 (score dummy)
 
# OUTPUT: 
# - Res (score dummy) 

# NOTE:
# - Tmp1 must be in interval [0;360]

# CODE:
#____________________________________________________________________________________________________

# Retranscription of Tmp1 on interval [0;90[

scoreboard players operation @s Tmp3 = @s Tmp1
scoreboard players operation @s[score_Tmp1_min=90,score_Tmp1=179] Tmp3 *= Neg Constant
scoreboard players operation @s[score_Tmp1_min=90,score_Tmp1=179] Tmp3 += 180 Constant
scoreboard players operation @s[score_Tmp1_min=180,score_Tmp1=269] Tmp3 -= 180 Constant
scoreboard players operation @s[score_Tmp1_min=270] Tmp3 *= Neg Constant
scoreboard players operation @s[score_Tmp1_min=270] Tmp3 += 360 Constant

# Calcul Cos

scoreboard players operation @s Res = @s Tmp3
scoreboard players operation @s Res *= @s Res
scoreboard players operation @s Res *= 4 Constant
scoreboard players operation @s Res *= Neg Constant
scoreboard players operation @s Res += 32400 Constant
scoreboard players operation @s Res *= 1000 Constant
scoreboard players operation @s Tmp2 = @s Tmp3
scoreboard players operation @s Tmp2 *= @s Tmp2
scoreboard players operation @s Tmp2 += 32400 Constant
scoreboard players operation @s Res /= @s Tmp2

scoreboard players operation @s[score_Tmp1_min=90,score_Tmp1=269] Res *= Neg Constant


