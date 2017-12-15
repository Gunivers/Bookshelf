# NAME: Get Vector Lenght
# PATH: Gunivers-Lib:Entity/Vectors/GetLenght

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

function Gunivers-Lib:Entity/Vectors/GetLenghtSquared
scoreboard players operation @s Tmp1 = @s Res

function Gunivers-Lib:Math/sqrt