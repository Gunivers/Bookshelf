# NAME: Get Vector Lenght Squared
# PATH: Gunivers-Lib:Entity/Vectors/GetLenghtSquared

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - Tmp1 (score dummy)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# OUTPUT:
# - Res

# NOTE:
# - 

# CODE:

scoreboard players operation @s Tmp1 = @s VectorX
scoreboard players operation @s Tmp1 *= @s VectorX
scoreboard players operation @s Res = @s Tmp1

scoreboard players operation @s Tmp1 = @s VectorY
scoreboard players operation @s Tmp1 *= @s VectorY
scoreboard players operation @s Res += @s Tmp1

scoreboard players operation @s Tmp1 = @s VectorZ
scoreboard players operation @s Tmp1 *= @s VectorZ
scoreboard players operation @s Res += @s Tmp1