# NAME: Calcul Vectors
# PATH: Gunivers-Lib:Entity/Vectors/GetByOrientation

# AUTHOR: Leirof

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENT:
# - Gunivers-Lib:Utils/Import/Math (Import file)
# - Gunivers-Lib:Utils/Import/Orientation (Import file)
# - Gunivers-Lib:Utils/Import/Vectors (Import file)
# - Gunivers-Lib:Utils/Import/Temporary (Import file)

# INPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# NOTE:
# - The Phi input must be in interval [0;360] and the Theta input must be in interval [0;180]

# CONFIGURATION:
# - Default VectorSpeed
scoreboard players set @s VectorSpeed 1000

# CODE 
#____________________________________________________________________________________________________

# - Calcul Vector Y
scoreboard players operation @s Tmp1 = @s Theta
function Gunivers-Lib:Math/Cos
scoreboard players operation @s VectorY = @s Res

# - Calcul Vector Z
scoreboard players operation @s Tmp1 = @s Phi
function Gunivers-Lib:Math/Cos
scoreboard players operation @s VectorZ = @s Res
scoreboard players operation @s Tmp1 = @s Theta
function Gunivers-Lib:Math/Sin
scoreboard players operation @s VectorZ *= @s Res

# - Calcul Vector X
scoreboard players operation @s VectorX = @s Res
scoreboard players operation @s Tmp1 = @s Phi
function Gunivers-Lib:Math/Sin
scoreboard players operation @s VectorX *= @s Res

# - Retranscription of Phi on interval [0;1000]
scoreboard players operation @s VectorX /= 1000 Constant
scoreboard players operation @s VectorX /= Neg Constant
scoreboard players operation @s VectorZ /= 1000 Constant