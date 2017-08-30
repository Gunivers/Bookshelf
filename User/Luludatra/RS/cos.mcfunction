
# SYSTEME COSINUS
# Calcul d'un angle vers son cosinus
# by Luludatra

# @Author: Leirof

# ---------------------------------------------------------------------------------------

scoreboard objectives add Operation dummy
scoreboard objectives add Tmp dummy
scoreboard objectives add Tmp2 dummy
scoreboard objectives add Tmp3 dummy
scoreboard objectives add Res dummy
scoreboard objectives add Constant dummy

scoreboard players set -1 Constant -1
scoreboard players set 4 Constant 4
scoreboard players set 180 Constant 180
scoreboard players set 360 Constant 360
scoreboard players set 10000 Constant 10000
scoreboard players set 32400 Constant 32400

# Input values:
# Note: Tmp must be in interval [0;360]
scoreboard players operation @s Tmp = @s Operation

# Retranscription of Phi on interval [0;90[

scoreboard players operation @s Tmp3 = @s Tmp
scoreboard players operation @s[score_Tmp_min=90,score_Tmp=179] Tmp3 *= -1 Constant
scoreboard players operation @s[score_Tmp_min=90,score_Tmp=179] Tmp3 += 180 Constant
scoreboard players operation @s[score_Tmp_min=180,score_Tmp=269] Tmp3 -= 180 Constant
scoreboard players operation @s[score_Tmp_min=270] Tmp3 *= -1 Constant
scoreboard players operation @s[score_Tmp_min=270] Tmp3 += 360 Constant

# Calcul Cos

scoreboard players operation @s Res = @s Tmp3
scoreboard players operation @s Res *= @s Res
scoreboard players operation @s Res *= 4 Constant
scoreboard players operation @s Res *= -1 Constant
scoreboard players operation @s Res += 32400 Constant
scoreboard players operation @s Res *= 10000 Constant
scoreboard players operation @s Tmp2 = @s Tmp3
scoreboard players operation @s Tmp2 *= @s Tmp2
scoreboard players operation @s Tmp2 += 32400 Constant
scoreboard players operation @s Res /= @s Tmp2

scoreboard players operation @s[score_Tmp_min=90,score_Tmp=269] Res *= -1 Constant

# Output values:
scoreboard players operation @s Operation = @s Res


