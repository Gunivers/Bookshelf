# NAME: Get Distance To TargetID
# PATH: Gunivers-Lib:Entity/Location/GetDistanceToTargetID

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
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
# - Res (score dummy)

# INPUT:
# - TargetID (score dummy) The ID of the Target
# - LocX (score dummy) /!\ must be defined on both entities
# - LocY (score dummy) /!\ must be defined on both entities
# - LocZ (score dummy) /!\ must be defined on both entities

# OUTPUT:
# - Res (score dummy)

# NOTE:
# - The distance must be less than 40 000 blocks

# CODE:

function Gunivers-Lib:Entity/Vectors/GetByTargetID

function Gunivers-Lib:Entity/Vectors/GetLenght