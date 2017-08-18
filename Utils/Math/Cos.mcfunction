# Calcul Cosinus
# Path: Gunivers-Lib:Utils/Math/Cos

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Tmp (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)
# - Gunivers-Lib:Import/Math (MCfunction)

# Input values:
# - Tmp (score dummy)

# Output values:
# - Res (score dummy)

#Note: Tmp must be in interval [0;360]



#Initialization

scoreboard players set @s VectorSpeed 200

scoreboard players set Neg Constant -1
scoreboard players set 4 Constant 4 
scoreboard players set 180 Constant 180
scoreboard players set 360 Constant 360
scoreboard players set 1000 Constant 1000 
scoreboard players set 32400 Constant 32400 
scoreboard players set 40500 Constant 40500

# Retranscription of Phi on interval [0;90[

scoreboard players operation @s Tmp3 = @s Tmp
scoreboard players operation @s[score_Tmp_min=90,score_Tmp=179] Tmp3 *= Neg Constant
scoreboard players operation @s[score_Tmp_min=90,score_Tmp=179] Tmp3 += 180 Constant
scoreboard players operation @s[score_Tmp_min=180,score_Tmp=269] Tmp3 -= 180 Constant
scoreboard players operation @s[score_Tmp_min=270] Tmp3 *= Neg Constant
scoreboard players operation @s[score_Tmp_min=270] Tmp3 += 360 Constant

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

scoreboard players operation @s[score_Tmp_min=90,score_Tmp=269] Res *= Neg Constant

