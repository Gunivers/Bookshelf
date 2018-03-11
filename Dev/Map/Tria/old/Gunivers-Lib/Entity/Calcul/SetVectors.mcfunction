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
# - Res (score dummy)

# Input values:
# - Phi (score dummy)
# - Theta (score dummy)

# Output values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

#Calcul Vector Y

execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Tmp = @s Theta
function Gunivers-Lib:Utils/Math/Cos
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s VectorY = @s Res

#Calcul Vector Z

execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Tmp = @s Phi
function Gunivers-Lib:Utils/Math/Cos
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s VectorZ = @s Res

execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Tmp = @s Theta
function Gunivers-Lib:Utils/Math/Sin
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s VectorZ *= @s Res

#Calcul Vector X

execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s VectorX = @s Res

execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s Tmp = @s Phi
function Gunivers-Lib:Utils/Math/Sin
execute @e[tag=SetVectors] ~ ~ ~ scoreboard players operation @s VectorX *= @s Res

# Retranscription of Phi on interval [0;1000]
scoreboard players operation @e[tag=SetVectors] VectorX /= 1000 Constant
scoreboard players operation @e[tag=SetVectors] VectorX /= Neg Constant
scoreboard players operation @e[tag=SetVectors] VectorZ /= 1000 Constant

scoreboard players tag @e remove SetVectors
