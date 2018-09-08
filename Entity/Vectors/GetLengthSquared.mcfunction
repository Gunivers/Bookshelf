# NAME: Get Vector Lenght
# PATH: Gunivers-Lib:Entity/Vectors/GetLenght

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Vectors (Import file)
# - Gunivers-Lib:Utils/Import/Math (Import file)
# - Gunivers-Lib:Utils/Import/Temporary (Import file)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# OUTPUT:
# - Res (score dummy)

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s Tmp1 = @s VectorX
scoreboard players operation @s Tmp1 *= @s VectorX
scoreboard players operation @s Res = @s Tmp1

scoreboard players operation @s Tmp1 = @s VectorY
scoreboard players operation @s Tmp1 *= @s VectorY
scoreboard players operation @s Res += @s Tmp1

scoreboard players operation @s Tmp1 = @s VectorZ
scoreboard players operation @s Tmp1 *= @s VectorZ
scoreboard players operation @s Res += @s Tmp1