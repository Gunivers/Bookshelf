# NAME: Rotate Vector
# PATH: Gunivers-Lib:Entity/Vectors/Rotate

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - 

# INPUT:
# - Tmp7 (score dummy) The value of the vector on x
# - Tmp8 (score dummy) The value of the vector on y
# - Tmp9 (score dummy) The value of the vector on z
# - VectorPhi (score dummy) The rotation of the vector on phi (horizontal)
# - VectorTheta (score dummy) The rotation of the vector on theta (vertical)

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# CODE:

function Gunivers-Lib/Entity/Id/Check

scoreboard players operation @s VectorX -= @e[c=1,tag=IdMatch] VectorX
scoreboard players operation @s VectorY -= @e[c=1,tag=IdMatch] VectorY
scoreboard players operation @s VectorZ -= @e[c=1,tag=IdMatch] VectorZ