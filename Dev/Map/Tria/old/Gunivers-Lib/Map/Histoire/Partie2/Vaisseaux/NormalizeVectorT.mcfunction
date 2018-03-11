# Calcul Vector Normalizer

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Import: TargetVectors

# Input values:
# - TargetVectorX (score dummy)
# - TargetVectorY (score dummy)
# - TargetVectorZ (score dummy)

# Output values:
# - TargetVectorX (score dummy)
# - TargetVectorY (score dummy)
# - TargetVectorZ (score dummy)


# Note: Cette fonction permet de redefinir des vecteurs de mouvement correctes (La longueur du vecteur final devient 1000) à partir de 3 vecteurs basiques (coordonnées relatives par exemple)

scoreboard players operation @s Tmp3 = @s TargetVectorX
scoreboard players operation @s[score_TargetVectorX=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp = @s Tmp3

scoreboard players operation @s Tmp3 = @s TargetVectorY
scoreboard players operation @s[score_TargetVectorY=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp += @s Tmp3

scoreboard players operation @s Tmp3 = @s TargetVectorZ
scoreboard players operation @s[score_TargetVectorZ=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp += @s Tmp3

scoreboard players set @s Tmp2 1000000
scoreboard players operation @s Tmp2 /= @s Tmp


scoreboard players operation @s TargetVectorX *= @s Tmp2
scoreboard players operation @s TargetVectorY *= @s Tmp2
scoreboard players operation @s TargetVectorZ *= @s Tmp2

scoreboard players operation @s TargetVectorX /= 1000 Constant
scoreboard players operation @s TargetVectorY /= 1000 Constant
scoreboard players operation @s TargetVectorZ /= 1000 Constant