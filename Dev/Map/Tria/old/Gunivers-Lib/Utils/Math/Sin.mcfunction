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


# Retranscription of Tmp on interval [0;180[

execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Tmp3 = @s Tmp
scoreboard players operation @e[score_Tmp_min=180,tag=SetVectors] Tmp3 -= 180 Constant

# Calcul Sin

execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Res = @s Tmp3
scoreboard players operation @e[tag=SetVectors] Res *= Neg Constant
scoreboard players operation @e[tag=SetVectors] Res += 180 Constant
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Res *= @s Tmp3
scoreboard players operation @e[tag=SetVectors] Res *= 4 Constant
scoreboard players operation @e[tag=SetVectors] Res *= 1000 Constant

execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Tmp2 = @s Tmp3
scoreboard players operation @e[tag=SetVectors] Tmp2 *= Neg Constant
scoreboard players operation @e[tag=SetVectors] Tmp2 += 180 Constant
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Tmp2 *= @s Tmp3
scoreboard players operation @e[tag=SetVectors] Tmp2 *= Neg Constant
scoreboard players operation @e[tag=SetVectors] Tmp2 += 40500 Constant
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Res /= @s Tmp2

scoreboard players operation @e[score_Tmp_min=180,tag=SetVectors] Res *= Neg Constant
































