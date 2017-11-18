# NAME: Get Distance To TargetID Accurate
# PATH: Gunivers-Lib:EntityAccurate/Location/GetDistanceToTargetID

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)
# - Tmp1 (score dummy)
# - TargetID (score dummy)
# - Math (Import)
# - Entity/Vectors/GetByTargetID (MCfunction)
# - Entity/Vectors/GetLenght (MCfunction)

# INPUT:
# - TargetID (score dummy) The ID of the Target
# - LocX (score dummy) /!\ must be defined on both entities
# - LocY (score dummy) /!\ must be defined on both entities
# - LocZ (score dummy) /!\ must be defined on both entities

# OUTPUT:
# - Res

# NOTE:
# - 

# CODE:

function Gunivers-Lib:Entity/Vectors/GetByTargetID

function Gunivers-Lib:Entity/Vectors/GetLenghtSquared
scoreboard players operation @s Tmp1 = @s Res
scoreboard players operation @s Tmp1 *= 1000000 Constant
function Gunivers-Lib:Utils/Math/Sqrt