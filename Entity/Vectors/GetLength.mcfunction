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

function Gunivers-Lib:Entity/Vectors/GetLengthSquared
scoreboard players operation @s Tmp1 = @s Res
function Gunivers-Lib:Math/sqrt