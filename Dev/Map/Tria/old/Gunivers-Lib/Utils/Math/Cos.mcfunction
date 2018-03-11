# Cos

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Tmp (dummy)
# - Tmp2 (dummy)
# - Tmp3 (dummy)
# - Res (dummy)
# - Constant (dummy)

# Input values:
# - Tmp (score dummy)

# Output values:
# - Res (score dummy)

#Note: Tmp must be in interval [0;360]

# Retranscription of Phi on interval [0;90[

execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Tmp3 = @s Tmp
scoreboard players operation @e[tag=SetVectors,score_Tmp_min=90,score_Tmp=179] Tmp3 *= Neg Constant
scoreboard players operation @e[tag=SetVectors,score_Tmp_min=90,score_Tmp=179] Tmp3 += 180 Constant
scoreboard players operation @e[tag=SetVectors,score_Tmp_min=180,score_Tmp=269] Tmp3 -= 180 Constant
scoreboard players operation @e[tag=SetVectors,score_Tmp_min=270] Tmp3 *= Neg Constant
scoreboard players operation @e[tag=SetVectors,score_Tmp_min=270] Tmp3 += 360 Constant

# Calcul Cos

execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Res = @s Tmp3
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Res *= @s Res
scoreboard players operation @e[tag=SetVectors] Res *= 4 Constant
scoreboard players operation @e[tag=SetVectors] Res *= Neg Constant
scoreboard players operation @e[tag=SetVectors] Res += 32400 Constant
scoreboard players operation @e[tag=SetVectors] Res *= 1000 Constant
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Tmp2 = @s Tmp3
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Tmp2 *= @s Tmp2
scoreboard players operation @e[tag=SetVectors] Tmp2 += 32400 Constant
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Res /= @s Tmp2

scoreboard players operation @e[score_Tmp_min=90,score_Tmp=269] Res *= Neg Constant

