# Calcul Vectors Normalizer

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Import: Vectors

# Input values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# Output values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)


# Note: Cette fonction permet de redefinir des vecteurs de mouvement correctes (La longueur du vecteur final devient 1000) à partir de 3 vecteurs basiques (coordonnées relatives par exemple)

scoreboard players operation @s Tmp3 = @s VectorX
scoreboard players operation @s[score_VectorX=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp = @s Tmp3

scoreboard players operation @s Tmp3 = @s VectorY
scoreboard players operation @s[score_VectorY=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp += @s Tmp3

scoreboard players operation @s Tmp3 = @s VectorZ
scoreboard players operation @s[score_VectorZ=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp += @s Tmp3

scoreboard players set @s Tmp2 1000000
scoreboard players operation @s Tmp2 /= @s Tmp


scoreboard players operation @s VectorX *= @s Tmp2
scoreboard players operation @s VectorY *= @s Tmp2
scoreboard players operation @s VectorZ *= @s Tmp2

scoreboard players operation @s VectorX /= 1000 Constant
scoreboard players operation @s VectorY /= 1000 Constant
scoreboard players operation @s VectorZ /= 1000 Constant