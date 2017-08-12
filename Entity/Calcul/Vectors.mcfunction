# SetVectors

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Gunivers-Lib:Utils/Math/Cos (function)
# - Gunivers-Lib:Utils/Math/Sin (function)
# - Phi (score dummy)
# - Theta (score dummy)
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# Input values:
# - Phi (score dummy)
# - Theta (score dummy)

# Output values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)



#Initialization

scoreboard players set @s VectorSpeed 1000

#Calcul Vector Y

scoreboard players operation @s Tmp = @s Theta
function Gunivers-Lib:Utils/Math/Cos
scoreboard players operation @s VectorY = @s Res

#Calcul Vector Z

scoreboard players operation @s Tmp = @s Phi
function Gunivers-Lib:Utils/Math/Cos
scoreboard players operation @s VectorZ = @s Res

scoreboard players operation @s Tmp = @s Theta
function Gunivers-Lib:Utils/Math/Sin
scoreboard players operation @s VectorZ *= @s Res

#Calcul Vector X

scoreboard players operation @s VectorX = @s Res

scoreboard players operation @s Tmp = @s Phi
function Gunivers-Lib:Utils/Math/Sin
scoreboard players operation @s VectorX *= @s Res

# Retranscription of Phi on interval [0;1000]
scoreboard players operation @s VectorX /= 1000 Constant
scoreboard players operation @s VectorX /= Neg Constant
scoreboard players operation @s VectorZ /= 1000 Constant
