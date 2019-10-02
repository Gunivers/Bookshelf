
# SYSTEME SINUS
# Calcul d'un angle vers son sinus
# by Luludatra

# @Author: Leirof

# ---------------------------------------------------------------------------------------

scoreboard objectives add Operation dummy
scoreboard objectives add Tmp1 dummy
scoreboard objectives add Tmp2 dummy
scoreboard objectives add Tmp3 dummy
scoreboard objectives add Res dummy
scoreboard objectives add Constant dummy

scoreboard players set -1 Constant -1
scoreboard players set 4 Constant 4
scoreboard players set 180 Constant 180
scoreboard players set 10000 Constant 10000
scoreboard players set 40500 Constant 40500

# Input values:
# Note: Tmp1 must be in interval [0;360]
scoreboard players operation @s Tmp1 = @s Operation



# Retranscription of Tmp1 on interval [0;180[
scoreboard players operation @s Tmp3 = @s Tmp
scoreboard players operation @s[score_Tmp1_min=180] Tmp3 -= 180 Constant

# Calcul Sin

scoreboard players operation @s Res = @s Tmp3
scoreboard players operation @s Res *= -1 Constant
scoreboard players operation @s Res += 180 Constant
scoreboard players operation @s Res *= @s Tmp3
scoreboard players operation @s Res *= 4 Constant
scoreboard players operation @s Res *= 10000 Constant

scoreboard players operation @s Tmp2 = @s Tmp3
scoreboard players operation @s Tmp2 *= -1 Constant
scoreboard players operation @s Tmp2 += 180 Constant
scoreboard players operation @s Tmp2 *= @s Tmp3
scoreboard players operation @s Tmp2 *= -1 Constant
scoreboard players operation @s Tmp2 += 40500 Constant
scoreboard players operation @s Res /= @s Tmp2

scoreboard players operation @s[score_Tmp1_min=180] Res *= -1 Constant

# Output values:
scoreboard players operation @s Operation = @s Res

