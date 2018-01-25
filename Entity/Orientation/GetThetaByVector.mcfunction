# NAME: Get Orientation Theta By Vector
# PATH: Gunivers-Lib:Entity/Orientation/GetThetaByVector

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Vectors (Import file)
# - Gunivers-Lib:Utils/Import/Orientation (Import file)
# - Gunivers-Lib:Utils/Import/Math (Import file)

# INPUT:
# - VectorY (score dummy) 

# OUTPUT:
# - Theta (score dummy) 

# CODE: 
scoreboard players operation @s Tmp1 = @s VectorY
function Gunivers-Lib:Math/Arccos
scoreboard players operation @s Theta = @s Res