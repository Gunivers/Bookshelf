# NAME: Rotate Vector
# PATH: Gunivers-Lib:Entity/Vectors/Rotate

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Orientation (Import file)
# - Gunivers-Lib:Utils/Import/Constant (Import file)
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Vectors (Import file)
# - Gunivers-Lib:Utils/Import/Orientation (Import file)
# - Gunivers-Lib:Utils/Import/Math (Import file)
# - Gunivers-Lib:Entity/Orientation/GetPhiByVector (MCfunction)
# - Gunivers-Lib:Entity/Orientation/GetThetaByVector (MCfunction)
# - Gunivers-Lib:Entity/Orientation/Normalize (MCfunction)
# - Gunivers-Lib:Entity/Vectors/GetByOrientation (MCfunction)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorPhi (score dummy) The rotation applied on phi (horizontal)
# - VectorTheta (score dummy) The rotation applied on theta (vertical)

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# CODE:
#____________________________________________________________________________________________________


# Gets the old vectors orientation
function Gunivers-Lib:Entity/Orientation/GetPhiByVector
function Gunivers-Lib:Entity/Orientation/GetThetaByVector

# Adds the wanted orientation
scoreboard players operation @s Phi += @s VectorPhi
scoreboard players operation @s Theta += @s VectorTheta	
function Gunivers-Lib:Entity/Orientation/Normalize

# Calculates the new vector
function Gunivers-Lib:Entity/Vectors/GetByOrientation

