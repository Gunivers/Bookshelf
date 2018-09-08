# NAME: Normalize Vectors
# PATH: Gunivers-Lib:Entity/Vectors/Normalize

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENT:
# - Gunivers-Lib:Utils/Import/Vectors (Import file)
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Constant (Import file)

# INPUT:
# - VectorX (score dummy)
# - Vectory (score dummy)
# - Vectorz (score dummy)
# - Tmp1 (score dummy)    <- Vectors will be normalized between [ -Tmp1 ; Tmp1 ]

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s Tmp3 = @s VectorX
scoreboard players operation @s[score_VectorX=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp2 = @s Tmp3

scoreboard players operation @s Tmp3 = @s VectorY
scoreboard players operation @s[score_VectorY=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp2 += @s Tmp3

scoreboard players operation @s Tmp3 = @s VectorZ
scoreboard players operation @s[score_VectorZ=-1] Tmp3 *= Neg Constant 
scoreboard players operation @s Tmp2 += @s Tmp3



scoreboard players operation @s VectorX *= @s Tmp1
scoreboard players operation @s VectorX /= @s Tmp2
scoreboard players operation @s VectorY *= @s Tmp1
scoreboard players operation @s VectorY /= @s Tmp2
scoreboard players operation @s VectorZ *= @s Tmp1
scoreboard players operation @s VectorZ /= @s Tmp2