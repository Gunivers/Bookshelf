# Calcul Vectors Normalizer Advanced

# @Author: KubbyDev

# Version: 1.0
# Minecraft Version: 1.12

# Import: Vectors

# Input values:
# - VectorX (score dummy)
# - Vectory (score dummy)
# - Vectorz (score dummy)
# - Tmp9 (score dummy)    <- The new vector length will be Tmp9

# Output values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# Note:

# CODE:

scoreboard players operation @s Tmp2 = @s VectorX
scoreboard players operation @s Tmp2 *= @s Tmp2
scoreboard players operation @s Tmp1 = @s Tmp2

scoreboard players operation @s Tmp2 = @s VectorY
scoreboard players operation @s Tmp2 *= @s Tmp2
scoreboard players operation @s Tmp1 += @s Tmp2

scoreboard players operation @s Tmp2 = @s VectorZ
scoreboard players operation @s Tmp2 *= @s Tmp2
scoreboard players operation @s Tmp1 += @s Tmp2

function Gunivers-Lib:Math/Sqrt

scoreboard players operation @s VectorX *= @s Tmp9
scoreboard players operation @s VectorY *= @s Tmp9
scoreboard players operation @s VectorZ *= @s Tmp9

scoreboard players operation @s VectorX /= @s Res
scoreboard players operation @s VectorY /= @s Res
scoreboard players operation @s VectorZ /= @s Res