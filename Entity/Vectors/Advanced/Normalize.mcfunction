# Calcul Vectors Normalizer Advanced

# @Author: KubbyDev

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

scoreboard players operation @s Tmp2 = @s VectorX
scoreboard players operation @s Tmp2 *= @s Tmp2
scoreboard players operation @s Tmp1 = @s Tmp2

scoreboard players operation @s Tmp2 = @s VectorY
scoreboard players operation @s Tmp2 *= @s Tmp2
scoreboard players operation @s Tmp1 += @s Tmp2

scoreboard players operation @s Tmp2 = @s VectorZ
scoreboard players operation @s Tmp2 *= @s Tmp2
scoreboard players operation @s Tmp1 += @s Tmp2

function Gunivers-Lib:Math/sqrt

scoreboard players operation @s VectorX *= 1000 Constant
scoreboard players operation @s VectorY *= 1000 Constant
scoreboard players operation @s VectorZ *= 1000 Constant

scoreboard players operation @s VectorX /= @s Res
scoreboard players operation @s VectorY /= @s Res
scoreboard players operation @s VectorZ /= @s Res