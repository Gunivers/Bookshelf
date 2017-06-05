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

scoreboard players operation @s Tmp = @s VectorX
scoreboard players operation @s Tmp += @s VectorY
scoreboard players operation @s Tmp += @s VectorZ

scoreboard players set @s Tmp2 1000000
scoreboard players operation @s Tmp2 /= @s Tmp


scoreboard players operation @s VectorX *= @s Tmp2
scoreboard players operation @s VectorY *= @s Tmp2
scoreboard players operation @s VectorZ *= @s Tmp2

scoreboard players operation @s VectorX /= 1000 Constant
scoreboard players operation @s VectorY /= 1000 Constant
scoreboard players operation @s VectorZ /= 1000 Constant