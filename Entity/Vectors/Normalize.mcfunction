# Calcul Vectors Normalizer

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Import: Vectors

# Input values:
# - VectorX (score dummy)
# - Vectory (score dummy)
# - Vectorz (score dummy)

# Output values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)


# Note: Cette fonction permet de redefinir des vecteurs de mouvement correctes à partir de 3 vecteurs basiques (coordonnées relatvies par exemple)

scoreboard players operation @s Tmp3 = @s VectorX
scoreboard players operation @s[score_VectorX=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp1 = @s Tmp3

scoreboard players operation @s Tmp3 = @s VectorY
scoreboard players operation @s[score_VectorY=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp1 += @s Tmp3

scoreboard players operation @s Tmp3 = @s VectorZ
scoreboard players operation @s[score_VectorZ=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp1 += @s Tmp3



scoreboard players operation @s VectorX *= 1000 Constant
scoreboard players operation @s VectorX /= @s Tmp1
scoreboard players operation @s VectorY *= 1000 Constant
scoreboard players operation @s VectorY /= @s Tmp1
scoreboard players operation @s VectorZ *= 1000 Constant
scoreboard players operation @s VectorZ /= @s Tmp1